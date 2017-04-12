-- libs
log = require('libs.log')
lume = require('libs.lume')
hxdx = require('libs.hxdx')

-- classes
Class = require('libs.classic')
Level = require('classes.level')
Mesh = require('classes.meshes.mesh')
Solid = require('classes.meshes.solid')
Body = require('classes.meshes.body')
Switch = require('classes.meshes.switch')
Exit = require('classes.meshes.exit')
Key = require('classes.meshes.key')
Zone = require('classes.meshes.zone')
Player = require('classes.player')

-- singletones
camera = require('classes.managers.camera')
settings = require('classes.managers.settings')
looper = require('classes.managers.looper')
game = require('classes.managers.game')
mixer = require('classes.managers.mixer')
