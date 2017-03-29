require('requires')

function love.load()
  settings:load()
  renderer:load()
  gameloop:addLoop(box2d)

  level = Level('level0')
  renderer:addRenderer(level, layersOrder.level)
  player = Player(level.start.x, level.start.y)
  renderer:addRenderer(player, layersOrder.player)

  camera:setWorld(-200, -200, level.width+200, level.height+200)
end

function love.update(dt)
  gameloop:update(dt)
  camera:setPosition(player:getX(), player:getY())
end

function love.draw()
  camera:draw(function(l,t,w,h) renderer:draw() end)
end
