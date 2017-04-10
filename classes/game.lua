local levels = { "level0", "level1" }

local game = {}

local playerCollisionSettings = {
  ignores = { meshTypes.health, meshTypes.damage, meshTypes.exit },
  enter = { meshTypes.health, meshTypes.damage, meshTypes.exit },
  exit = { meshTypes.health, meshTypes.damage },
}

function game:start(levelName)

  looper:removeLoop(game)

  -- Physical world setup
  if box2d ~= nil then
    box2d:destroy()
    looper:removeLoop(box2d)
  end
  box2d = hxdx.newWorld()
  box2d:addCollisionClass(meshTypes.solid)
  box2d:addCollisionClass(meshTypes.health)
  box2d:addCollisionClass(meshTypes.damage)
  box2d:addCollisionClass(meshTypes.exit)
  box2d:addCollisionClass('player', playerCollisionSettings)
  box2d:collisionClassesSet()
  looper:addLoop(box2d)

  -- Load level, player and start!
  self.level = Level(levelName or levels[1])
  self.player = Player(self.level.start.x, self.level.start.y)

  local background = require "classes.parallax"
  background.scale = 2
  background.x = 0
  background.y = 0

  camera:clear()
  camera:addObject(background, "background")
  camera:addObject(self.level, "level")
  camera:addObject(self.player, "player")

  camera:setBounds(0, 0, self.level.width - love.graphics.getWidth(), self.level.height - love.graphics.getHeight())
  camera:setCenter(self.player:getX(), self.player:getY())

  looper:addLoop(game)

end

function game:restartLevel()
  self:start(self.level.name)
end

function game:nextLevel()
  local levelIndex = lume.find(levels, self.level.name) + 1
  self:start(levels[levelIndex])
end

function game:update(dt)
  self.player:update(dt)
  camera:setCenter(self.player:getX(), self.player:getY())
end

return game
