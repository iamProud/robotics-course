Include 'world.g'

roboJoint (world) { Q:[0 0 0] }
robo (roboJoint) {
	joint:transXY, limits=[-10 10 -10 10]
}

base (robo) { X:<t(0 0 0.2)>, mass:1.0, shape:ssBox, size:[.75 .75 .1 .05], color=[.5 .5 .5], contact=-10}
wheel1 (base) {Q:<t(.2 .2 -.1)>, shape:sphere, size: [0 0 0 .1]}
wheel2 (base) {Q:<t(-.2 .2 -.1)>, shape:sphere, size: [0 0 0 .1]}
wheel3 (base) {Q:<t(.2 -.2 -.1)>, shape:sphere, size: [0 0 0 .1]}
wheel4 (base) {Q:<t(-.2 -.2 -.1)>, shape:sphere, size: [0 0 0 .1]}

bodyRotation (base) { Q:[0 0 0.4] }
body (bodyRotation) {
	shape:cylinder, size: [.7 .3], joint: hingeZ, limits=[-10 10], limits=[-10 10]
}

head (body) {Q:<t(0 0 .35)>, shape:sphere, size: [0 0 0 .3]}

armL (body) {Q:<t(.225 .3 .05)>, mass:1.0, shape:ssBox, size:[.45 .1 .15 .03], contact=-4 }
handL (armL) { Q:<t(0.225 0 0)>, shape:marker, size:[.1 .1 .1] }
armR (body) {Q:<t(.225 -.3 .05)>, mass:1.0, shape:ssBox, size:[.45 .1 .15 .03], contact=-4 }
handR (armR) { Q:<t(0.225 0 0)>, shape:marker, size:[.1 .1 .1] }
