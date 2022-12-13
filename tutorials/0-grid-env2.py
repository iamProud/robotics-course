#!/usr/bin/env python
# coding: utf-8

# # Custom Grid-World

# In[1]:


import sys
sys.path += ['../build', '../../../build', '../../lib']
print(sys.version)
import numpy as np
from robotic import ry
import time


# ## Setting up a basic Config

# In[2]:


C = ry.Config()


# Add base-grid with walls

# In[3]:


C.clear()
# C.addFile('../rai-robotModels/test/base-grid.g')
C.addFile('../my-robotModels/simpleRobo/robo.g')
C.view()


# ## Generating World
# 
# Set some variables.

# In[4]:


colors = [[.8, .1, .1], [1., .3, .2]]


# In[5]:


# world_list = []

# SAFE_FILE = 'demo.txt'
# SAFE_DIR = '/home/basti/Dokumente/Bachelorarbeit/Observations/{}'.format(SAFE_FILE)

# f = open(SAFE_DIR, 'r')

# for line in f:
#     row = []
    
#     for char in line:
#         if char == '\n':
#             break
            
#         row.append([int(char)])
        
#     world_list.append(row)
    

# world = np.asarray(world_list)
# off = -np.floor(world.shape[0] / 2)


# In[6]:


# world = np.array([
#     [1, 1, 1, 1, 1, 1, 1],
#     [1, 4, 0, 0, 0, 0, 1],
#     [1, 0, 3, 1, 3, 0, 1],
#     [1, 1, 0, 1, 0, 1, 1],
#     [1, 0, 2, 0, 3, 0, 1],
#     [1, 4, 0, 0, 0, 4, 1],
#     [1, 1, 1, 1, 1, 1, 1]
# ])

world = np.array([
    [1, 1, 1, 1, 1, 1, 1],
    [1, 4, 0, 0, 0, 0, 1],
    [1, 0, 0, 0, 3, 0, 1],
    [1, 1, 0, 1, 1, 1, 1],
    [1, 0, 2, 1, 0, 0, 1],
    [1, 4, 0, 0, 0, 4, 1],
    [1, 1, 1, 1, 1, 1, 1]
])

off = -3


# Iterate over world Array and generate Environment.

# In[7]:


roboFrame = 'robo'

for x in range(world.shape[0]):
    for y in range(world.shape[1]):
        if(world[x][y] == 1):
            c = colors[(x+y) % 2]
            block = C.addObject(name=f'block{x}-{y}', parent='world', shape=ry.ST.ssBox, pos=[x+off, y+off, .5], size=[1, 1, 1, .02], color=c)
#             block = C.addFrame(name=f'block{x}-{y}', parent='world', args='type:ssBox size:[1, 1, 1, .02] color=[1, 0, 0]')
            block.setPosition([x+off, y+off, 0.5])
            block.setMass(100.0)
            block.setContact(1)
        
        if(world[x][y] == 2):
            C.getFrame(roboFrame).setPosition([x+off, y+off, 0])
        
        if(world[x][y] == 3):
            box = C.addObject(name=f'box{x}-{y}', parent='world', shape=ry.ST.ssBox, pos=[x+off, y+off, .45], size=[.9, .9, .9, .02], color=[.6, .3, 0.])
        
        if(world[x][y] == 4):
            C.addObject(name=f'goal{x}-{y}', parent='world', shape=ry.ST.ssBox, pos=[x+off, y+off, .001], size=[.95, .95, .002, .002], color=[0., 1., 0.])


# In[8]:


print('joint names: ', C.getFrameNames() )
C.view()


# ## Create skeleton

# In[9]:


S = ry.Skeleton()
# touch box3-3
S.addEntry([1.], ry.SY.touch, ['armL', 'box2-4'])
S.addEntry([2.], ry.SY.above, ['base', 'goal5-5'])

# # move box4-4 to goal 5-5
# S.addEntry([1.], ry.SY.touch, ['armL', 'box4-4'])
# S.addEntry([1., 2.], ry.SY.stable, ['armL', 'box4-4'])
# S.addEntry([2.], ry.SY.above, ['box4-4', 'goal5-5'])
# S.addEntry([2.,7.], ry.SY.stableOn, ['goal5-5', 'box4-4'])

# # move box2-4 to goal1-1
# S.addEntry([3.], ry.SY.touch, ['armL', 'box2-4'])
# S.addEntry([3., 4.], ry.SY.stable, ['armL', 'box2-4'])
# S.addEntry([4.], ry.SY.above, ['box2-4', 'goal1-1'])
# S.addEntry([4.,7.], ry.SY.stableOn, ['goal1-1', 'box2-4'])

# # move box2-2 to goal5-1
# S.addEntry([5.], ry.SY.touch, ['armL', 'box2-2'])
# S.addEntry([5., 6.], ry.SY.stable, ['armL', 'box2-2'])
# S.addEntry([6.], ry.SY.above, ['box2-2', 'goal5-1'])
# S.addEntry([6.,7.], ry.SY.stableOn, ['goal5-1', 'box2-2'])


# ## solve for waypoints: create a komo instance, create nlp instance, then call generic solver

# In[ ]:


komo = S.getKomo_waypoints(C, 1e-1, 1e-2)
nlp = komo.nlp()
sol = ry.NLP_Solver()
sol.setProblem(nlp)
sol.setOptions( stopTolerance=1e-2 )
ret = sol.solve()
waypoints = komo.getPath_qAll()
# report on result, view, and play
print(ret)
#print(nlpW.report(2))
komo.view(True, 'waypoints solution')
komo.view_play(True, .2)
# store result


# ## solve for paths using RRT: for each phase create start-end problems, run RRT

# In[ ]:


m = len(waypoints)
rrt_dofs = []
rrt_paths = []
for t in range(0,int(m)):
    # grab config and waypoints
    [Ctmp, q0, q1] = S.getTwoWaypointProblem(t, komo)
    Ctmp.setJointState(q0);
    Ctmp.view(True, 'waypoint configuration phase ' + str(t) + ' START')
    Ctmp.setJointState(q1);
    Ctmp.view(True, 'waypoint configuration phase ' + str(t) + ' STOP')

    # call path finder
    sol = ry.PathFinder()
    sol.setProblem(Ctmp, q0, q1)
    ret = sol.solve()
    rrt_paths.append(ret.x)
    rrt_dofs.append(Ctmp.getDofIDs())

    #display the rrt path
    for i in range(0,ret.x.shape[0]):
        Ctmp.setJointState(ret.x[i])
        Ctmp.view(False, 'rrt path ' + str(i))
        time.sleep(.2)


# ## solve for full path: create a komo instance, initialize with waypoints & rrt paths, solve

# In[ ]:


komo = S.getKomo_path(C, 20, .2, -1, 1e-2)
komo.initWithWaypoints(waypoints)
komo.view(True, 'init with waypoints only')
for t in range(0,int(m)):
    komo.initPhaseWithDofsPath(t, rrt_dofs[t], rrt_paths[t], True)
    komo.view(True, 'init with RRT phase ' + str(t))
nlp = komo.nlp()
sol = ry.NLP_Solver()
sol.setProblem(nlp)
sol.setOptions( stopTolerance=1e-2 )
ret = sol.solve()
# report on result, view, and play
print(ret)
#print(nlp.report(2))
komo.view(True, 'path solution')
komo.view_play(True, .2)


# In[ ]:


C.view()


# In[ ]:




