local levels = { "level0", "level1" }

local game = {}

local playerCollisionSettings = {
  ignores = { meshTypes.health, meshTypes.exit },
  enter = { meshTypes.health, meshTypes.exit },
  exit = { meshTypes.health }
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
  box2d:addCollisionClass(meshTypes.exit)
  box2d:addCollisionClass('player', playerCollisionSettings)
  box2d:collisionClassesSet()
  looper:addLoop(box2d)

  -- Load level, player and start!
  self.level = Level(levelName or levels[1])
  self.player = Player(self.level.start.x, self.level.start.y)

  renderer:clearLayers( { layersOrder.level, layersOrder.player } )
  renderer:addRenderer(self.level, layersOrder.level)
  renderer:addRenderer(self.player, layersOrder.player)

  camera:setWorld(0, 0, self.level.width, self.level.height)
  camera:setPosition(self.player:getX(), self.player:getY())

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
  camera:setPosition(self.player:getX(), self.player:getY())
end

return game
