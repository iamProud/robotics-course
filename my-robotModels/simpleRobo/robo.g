world { }
robo {  }
base (robo) { X:<t(0 0 .2)>, mass:1.0, shape:ssBox, size:[.75 .75 .1 .05], color=[.5 .5 .5], contact=-10}

wheel1 (base) {Q:<t(.2 .2 -.1)>, shape:sphere, size: [0 0 0 .1]}
wheel2 (base) {Q:<t(-.2 .2 -.1)>, shape:sphere, size: [0 0 0 .1]}
wheel3 (base) {Q:<t(.2 -.2 -.1)>, shape:sphere, size: [0 0 0 .1]}
wheel4 (base) {Q:<t(-.2 -.2 -.1)>, shape:sphere, size: [0 0 0 .1]}

body {shape:cylinder, size: [.7 .3], contact=-10}
bodyRotation (base body) {joint: hingeZ, limits=[-10 10], limits=[-10 10], A:<t(0 0 .05)>, Q:<d(0 0 0 1)>, B:<t(0 0 .35)> }

head (body) {Q:<t(0 0 .35)>, shape:sphere, size: [0 0 0 .3]}

armL (body) {Q:<t(.225 .3 .05)>, mass:1.0, shape:ssBox, size:[.45 .1 .15 .03], contact=-4 }
armR (body) {Q:<t(.225 -.3 .05)>, mass:1.0, shape:ssBox, size:[.45 .1 .15 .03], contact=-4 }


worldTranslationRotation (world robo){ joint:transXY, limits=[-10 10 -10 10] }
