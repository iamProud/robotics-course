Include 'world.g'

roboJoint (world) { Q:[0.0 0.0 1.1] }

robo (roboJoint) {
    shape:ssCylinder, size:[.2 .2 .02], color:[0.96875 0.7421875 0.30859375], logical:{is_gripper}, limits: [-10 10 -10 10], sampleUniform:1,
    joint:transXY, contact: 1
}
