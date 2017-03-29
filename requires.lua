-- libs
log = require('libs/log')
lume = require('libs/lume')

-- singletones
box2d = require('libs/hxdx').newWorld()
camera = require('libs/gamera').new(0, 0, 1, 1)
settings = require('classes/settings')
renderer = require('classes/renderer')
gameloop = require('classes/gameloop')

-- classes
Class = require('libs/classic')
Level = require('classes/level')
Solid = require('classes/solid')
Player = require('classes/player')
