local levels = { "dev", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "end" }
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
  self.player:setGang(self.level.start.gang)

  looper:addLoop(game)

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
  mixer.sounds.exit:play()
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
