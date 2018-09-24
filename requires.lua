-- libs
lume = require('libs.lume')
wf = require('libs.windfield')
flux = require('libs.flux')
ripple = require('libs/ripple')

-- classes
Class = require('libs.classic')
Sprite = require('classes.sprite')
Level = require('classes.level')
Mesh = require('classes.meshes.mesh')
Solid = require('classes.meshes.solid')
Body = require('classes.meshes.body')
Switch = require('classes.meshes.switch')
Exit = require('classes.meshes.exit')
Key = require('classes.meshes.key')
Zone = require('classes.meshes.zone')
Player = require('classes.player')
Sound = require('classes.sound')

-- singletones
settings = require('classes.managers.settings')
camera = require('classes.managers.camera')
looper = require('classes.managers.looper')
game = require('classes.managers.game')
mixer = require('classes.managers.mixer')
