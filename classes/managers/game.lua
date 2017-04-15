local levels = { "test2", "test", "level0", "level1" }
local game = {}

function game:start(levelName)
  looper:removeLoop(game)

  -- Physical world setup
  if self.level ~= nil then
    self.level:destroy()
    box2d:destroy()
    looper:removeLoop(box2d)
  end
  box2d = hxdx.newWorld()
  Collision.register(box2d)
  looper:addLoop(box2d)

  -- Load level, player and start!
  self.level = Level(levelName or levels[1])
  self.player = Player(self.level.start.x, self.level.start.y)

  looper:addLoop(game)

  love.graphics.setBackgroundColor(lume.color(self.level.colors.sky, 256))

  camera:clear()

  camera:setParallaxBackground(self.level.background, self.level.width, self.level.height)
  camera:addObject(self.level, "level")
  camera:addObject(self.player, "player")

  camera:updateBounds(game.level.width, game.level.height)
  camera:setCenter(self.player:getX(), self.player:getY())

  camera.overlay.alpha = 1
  camera:fadeIn()
end

function game:restartLevel()
  camera:fadeOut(function()
    self:start(self.level.name)
  end)
end

function game:nextLevel()
  local levelIndex = lume.find(levels, self.level.name) + 1
  camera:fadeOut(function()
    self:start(levels[levelIndex])
  end)
end

function game:update(dt)
  self.level:update(dt)
  self.player:update(dt)
  if self.player.isDeath ~= true then
    camera:setCenter(self.player:getX(), self.player:getY())
  end
end

return game
