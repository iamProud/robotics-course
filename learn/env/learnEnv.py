import numpy as np
import sys
import random
sys.path += ['./build', '../../build', '../../lib']
import libry as ry


'''
Rai learn Enviroment to read a world file and compute a solution path.
'''
COLORS = [[.8, .1, .1], [1., .3, .2]]


class LearnEnv:
    def __init__(self, world_file=None, game='sokoban'):
        self.game = None
        self.set_game(game)
        self.world = None
        self.off = 0
        self.goal = None
        self.C = ry.Config()
        self.C.view()

        if world_file is not None:
            self.load_world(world_file)
            self.generate_world()

    def set_game(self, game):
        self.game = game

    def load_world(self, world_file):
        world_list = []
        save_dir = './learn/environments/{}/{}'.format(self.game, world_file)
        f = open(save_dir, 'r')

        for line in f:
            row = []

            for char in line:
                if char == '\n':
                    break

                row.append([int(char)])

            world_list.append(row)

        self.world = np.asarray(world_list)
        self.off = -np.floor(self.world.shape[0] / 2)

    def generate_world(self):
        self.C.clear()
        self.C.addFile('./rai-robotModels/myRobo/myRobo.g')

        for x in range(self.world.shape[0]):
            for y in range(self.world.shape[1]):
                # Generate new wall
                if self.world[x][y] == 1:
                    c = COLORS[(x + y) % 2]
                    block = self.C.addObject(name='block' + str(x) + '-' + str(y), parent='world', shape=ry.ST.ssBox,
                                             pos=[x + self.off, y + self.off, .5], size=[1, 1, 1, .02], color=c)
                    block.setMass(100.0)
                    block.setContact(1)

                # Set the Robot Position
                if self.world[x][y] == 2:
                    self.C.getFrame('robo').setPosition([x + self.off, y + self.off, 0])

                # Generate new Crate
                if self.world[x][y] == 3:
                    self.C.addObject(name='crate' + str(x) + '-' + str(y), parent='world', shape=ry.ST.ssBox,
                                     pos=[x + self.off, y + self.off, .45], size=[.9, .9, .9, .02], color=[.6, .3, 0.])

                # Generate new Target
                if self.world[x][y] == 4:
                    self.C.addObject(name='target' + str(x) + '-' + str(y), parent='world', shape=ry.ST.ssBox,
                                     pos=[x + self.off, y + self.off, .05], size=[.95, .95, .1, .05], color=[0., 1., 0.])

        # Generate world ground
        x_shift = 0 if self.world.shape[0] % 2 == 1 else -.5
        y_shift = 0 if self.world.shape[1] % 2 == 1 else -.5

        self.C.addObject(name='ground', parent='world', shape=ry.ST.box, pos=[x_shift, y_shift, -.005],
                         size=[self.world.shape[0], self.world.shape[1], .01], color=[.5, .5, .5])

        # Set Robot position if no Player in world
        if 2 not in self.world:
            self.set_player()

    '''
    
    '''
    def get_random_free_position(self):
        free_spaces = np.where(self.world == 0)

        a = np.array(free_spaces[0])
        rand_idx = random.choice(list(enumerate(a)))[0]
        x = free_spaces[0][rand_idx]
        y = free_spaces[1][rand_idx]

        return {"x": x + self.off, "y": y + self.off}


    '''
    Set a goal Object for path planning.
    Parameters:
        position (float{x, y}): The position of the goal. If None the Position is set randomly on an empty flied.
    '''
    def set_goal(self, position=None):
        if self.goal is not None:
            self.C.delFrame('goal')

        if position is None:
            position = self.get_random_free_position()

        self.goal = self.C.addObject(name='goal', parent='world', shape=ry.ST.capsule,
                                     pos=[position['x'], position['y'], 0.5], size=[0, .1], color=[0, 1, 0])

    '''
    
    '''
    def set_player(self, position=None):
        if position is None:
            position = self.get_random_free_position()

        self.C.getFrame('robo').setPosition([position['x'], position['y'], 0])

    '''
    Optimize Path
    '''
    def optimize_path(self):
        s = 1e7

        komo = self.C.komo_path(1, 20, 5, True)

        komo.addObjective([], ry.FS.accumulatedCollisions, [], ry.OT.eq, scale=[s])
        komo.addObjective([], ry.FS.jointLimits, [], ry.OT.ineq)

        komo.addObjective(times=[1.], feature=ry.FS.qItself, type=ry.OT.eq, order=1, scale=[s])

        komo.addObjective(times=[1.],
                          feature=ry.FS.positionDiff,
                          frames=['robo', 'goal'],
                          type=ry.OT.eq,
                          scale=[s, s, 0])

        komo.optimize()
        komo.getReport()
        komo.view(False, "Solution: Path Optimization")

        while True:
            a = input('Press: x to close | ENTER to play\n')

            if a == 'x':
                komo.view_close()
                return

            komo.view_play(False, .1)

