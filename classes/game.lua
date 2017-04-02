local levels = { "level0", "level1", "level2", "level3" }

local game = {}

function game:start(levelName)

  if box2d ~= nil then
    box2d:destroy()
    looper:removeLoop(box2d)
  end
  box2d = hxdx.newWorld()
  looper:addLoop(box2d)

  self.level = Level(levelName or levels[1])
  self.player = Player(self.level.start.x, self.level.start.y)

  renderer:clearLayers( { layersOrder.level, layersOrder.player } )
  renderer:addRenderer(self.level, layersOrder.level)
  renderer:addRenderer(self.player, layersOrder.player)

  camera:setWorld(0, 0, self.level.width, self.level.height)
  camera:setPosition(self.player:getX(), self.player:getY())

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

looper:addLoop(game)

return game
