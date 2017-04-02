-- libs
log = require('libs/log')
lume = require('libs/lume')

-- singletones
hxdx = require('libs/hxdx')
camera = require('libs/gamera').new(0, 0, 1, 1)
settings = require('classes/settings')
renderer = require('classes/renderer')
looper = require('classes/looper')
game = require('classes/game')

-- classes
Class = require('libs/classic')
Level = require('classes/level')
Solid = require('classes/solid')
Player = require('classes/player')
