from env.learnEnv import LearnEnv


if __name__ == '__main__':
    env = LearnEnv(world_file='1.txt', game='binary')

    # env.set_goal()

    close = False

    while not close:
        i = input('Press: x to exit | g to generate goal | p to set player | o to optimize | 1..5 to set environment\n')

        if i == 'x':
            close = True
            continue

        if i == 'g':
            env.set_goal()
            continue

        if i == 'p':
            env.set_player()
            continue

        if i == 'o':
            env.optimize_path()
            continue

        if i == 'sokoban':
            env.set_game('sokoban')
            env.load_world('1.txt')
            env.generate_world()
            continue

        if i == 'binary':
            env.set_game('binary')
            env.load_world('1.txt')
            env.generate_world()
            continue

        try:
            num = int(i)
        except ValueError:
            print('Unknown Input!')
            continue

        if num in range(1, 6):
            env.load_world(world_file='{}.txt'.format(num))
            env.generate_world()
