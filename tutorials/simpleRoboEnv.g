base_grid 	{  X:[0, 0, -0.005, 1, 0, 0, 0], shape:box, size:[7, 7, 0.01], color:[0.5, 0.5, 0.5], mass:1 }
world 	{  }
robo (worldTranslationRotation) 	{  }
base (robo) 	{  Q:[1, 0, 0.2, -1, 0, 0, 0], shape:ssBox, size:[0.8, 0.8, 0.1, 0.05], color:[0.5, 0.5, 0.5], contact:-10, mass:1 }
wheel1 (base) 	{  Q:[0.2, 0.2, -0.1, 1, 0, 0, 0], shape:sphere, size:[0, 0, 0, 0.1] }
wheel2 (base) 	{  Q:[-0.2, 0.2, -0.1, 1, 0, 0, 0], shape:sphere, size:[0, 0, 0, 0.1] }
wheel3 (base) 	{  Q:[0.2, -0.2, -0.1, 1, 0, 0, 0], shape:sphere, size:[0, 0, 0, 0.1] }
wheel4 (base) 	{  Q:[-0.2, -0.2, -0.1, 1, 0, 0, 0], shape:sphere, size:[0, 0, 0, 0.1] }
body (bodyRotation) 	{  Q:[0, 0, 0.35, 1, 0, 0, 0], shape:cylinder, size:[0.7, 0.3], contact:-10 }
bodyRotation_pre (base) 	{  Q:[0, 0, 0.05, 1, 0, 0, 0] }
bodyRotation (bodyRotation_pre) 	{ , joint:hingeZ }
head (body) 	{  Q:[0, 0, 0.35, 1, 0, 0, 0], shape:sphere, size:[0, 0, 0, 0.3] }
armL (body) 	{  Q:[0.25, 0.3, 0.05, 1, 0, 0, 0], shape:ssBox, size:[0.5, 0.1, 0.15, 0.03], contact:-4, mass:1 }
armR (body) 	{  Q:[0.25, -0.3, 0.05, 1, 0, 0, 0], shape:ssBox, size:[0.5, 0.1, 0.15, 0.03], contact:-4, mass:1 }
worldTranslationRotation (world) 	{ , joint:transXY }
block0-0 (world) 	{  Q:[-8, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-1 (world) 	{  Q:[-8, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-2 (world) 	{  Q:[-8, -6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-3 (world) 	{  Q:[-8, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-4 (world) 	{  Q:[-8, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-5 (world) 	{  Q:[-8, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-6 (world) 	{  Q:[-8, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-7 (world) 	{  Q:[-8, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-8 (world) 	{  Q:[-8, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-9 (world) 	{  Q:[-8, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-10 (world) 	{  Q:[-8, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-11 (world) 	{  Q:[-8, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-12 (world) 	{  Q:[-8, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-13 (world) 	{  Q:[-8, 5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-14 (world) 	{  Q:[-8, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block0-15 (world) 	{  Q:[-8, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-0 (world) 	{  Q:[-7, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-1 (world) 	{  Q:[-7, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-2 (world) 	{  Q:[-7, -6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-4 (world) 	{  Q:[-7, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-5 (world) 	{  Q:[-7, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-7 (world) 	{  Q:[-7, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-8 (world) 	{  Q:[-7, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-9 (world) 	{  Q:[-7, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-10 (world) 	{  Q:[-7, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-11 (world) 	{  Q:[-7, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-12 (world) 	{  Q:[-7, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block1-15 (world) 	{  Q:[-7, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block2-0 (world) 	{  Q:[-6, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block2-4 (world) 	{  Q:[-6, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block2-8 (world) 	{  Q:[-6, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block2-14 (world) 	{  Q:[-6, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block2-15 (world) 	{  Q:[-6, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-0 (world) 	{  Q:[-5, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-1 (world) 	{  Q:[-5, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-2 (world) 	{  Q:[-5, -6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-5 (world) 	{  Q:[-5, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-6 (world) 	{  Q:[-5, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-11 (world) 	{  Q:[-5, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-12 (world) 	{  Q:[-5, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-14 (world) 	{  Q:[-5, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block3-15 (world) 	{  Q:[-5, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block4-0 (world) 	{  Q:[-4, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block4-4 (world) 	{  Q:[-4, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block4-5 (world) 	{  Q:[-4, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block4-11 (world) 	{  Q:[-4, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block4-14 (world) 	{  Q:[-4, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block4-15 (world) 	{  Q:[-4, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-0 (world) 	{  Q:[-3, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-1 (world) 	{  Q:[-3, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-3 (world) 	{  Q:[-3, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-4 (world) 	{  Q:[-3, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-7 (world) 	{  Q:[-3, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-8 (world) 	{  Q:[-3, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-9 (world) 	{  Q:[-3, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-11 (world) 	{  Q:[-3, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-12 (world) 	{  Q:[-3, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block5-15 (world) 	{  Q:[-3, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-0 (world) 	{  Q:[-2, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-1 (world) 	{  Q:[-2, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-3 (world) 	{  Q:[-2, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-6 (world) 	{  Q:[-2, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-7 (world) 	{  Q:[-2, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-8 (world) 	{  Q:[-2, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-9 (world) 	{  Q:[-2, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-11 (world) 	{  Q:[-2, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-12 (world) 	{  Q:[-2, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-14 (world) 	{  Q:[-2, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block6-15 (world) 	{  Q:[-2, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-0 (world) 	{  Q:[-1, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-1 (world) 	{  Q:[-1, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-5 (world) 	{  Q:[-1, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-6 (world) 	{  Q:[-1, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-7 (world) 	{  Q:[-1, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-8 (world) 	{  Q:[-1, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-12 (world) 	{  Q:[-1, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block7-15 (world) 	{  Q:[-1, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-0 (world) 	{  Q:[0, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-3 (world) 	{  Q:[0, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-5 (world) 	{  Q:[0, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-6 (world) 	{  Q:[0, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-7 (world) 	{  Q:[0, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-10 (world) 	{  Q:[0, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block8-15 (world) 	{  Q:[0, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block9-0 (world) 	{  Q:[1, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block9-7 (world) 	{  Q:[1, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block9-9 (world) 	{  Q:[1, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block9-10 (world) 	{  Q:[1, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block9-12 (world) 	{  Q:[1, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block9-15 (world) 	{  Q:[1, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-0 (world) 	{  Q:[2, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-3 (world) 	{  Q:[2, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-9 (world) 	{  Q:[2, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-10 (world) 	{  Q:[2, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-12 (world) 	{  Q:[2, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-14 (world) 	{  Q:[2, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block10-15 (world) 	{  Q:[2, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-0 (world) 	{  Q:[3, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-1 (world) 	{  Q:[3, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-3 (world) 	{  Q:[3, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-5 (world) 	{  Q:[3, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-12 (world) 	{  Q:[3, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-14 (world) 	{  Q:[3, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block11-15 (world) 	{  Q:[3, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-0 (world) 	{  Q:[4, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-3 (world) 	{  Q:[4, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-9 (world) 	{  Q:[4, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-10 (world) 	{  Q:[4, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-11 (world) 	{  Q:[4, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-14 (world) 	{  Q:[4, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block12-15 (world) 	{  Q:[4, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block13-0 (world) 	{  Q:[5, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block13-4 (world) 	{  Q:[5, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block13-6 (world) 	{  Q:[5, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block13-14 (world) 	{  Q:[5, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block13-15 (world) 	{  Q:[5, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-0 (world) 	{  Q:[6, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-1 (world) 	{  Q:[6, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-2 (world) 	{  Q:[6, -6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-4 (world) 	{  Q:[6, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-6 (world) 	{  Q:[6, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-9 (world) 	{  Q:[6, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-11 (world) 	{  Q:[6, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-13 (world) 	{  Q:[6, 5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-14 (world) 	{  Q:[6, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block14-15 (world) 	{  Q:[6, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-0 (world) 	{  Q:[7, -8, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-1 (world) 	{  Q:[7, -7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-2 (world) 	{  Q:[7, -6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-3 (world) 	{  Q:[7, -5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-4 (world) 	{  Q:[7, -4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-5 (world) 	{  Q:[7, -3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-6 (world) 	{  Q:[7, -2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-7 (world) 	{  Q:[7, -1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-8 (world) 	{  Q:[7, 0, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-9 (world) 	{  Q:[7, 1, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-10 (world) 	{  Q:[7, 2, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-11 (world) 	{  Q:[7, 3, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-12 (world) 	{  Q:[7, 4, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-13 (world) 	{  Q:[7, 5, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-14 (world) 	{  Q:[7, 6, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }
block15-15 (world) 	{  Q:[7, 7, 0.5, -1, 0, 0, 0], joint:rigid, shape:ssBox, size:[1, 1, 1, 0.02], contact:1, mass:100 }

