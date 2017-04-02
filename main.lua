require('requires')

function love.load()
  settings:load()
  renderer:load()
  game:start()
end

function love.update(dt)
  looper:update(dt)
end

function love.draw()
  camera:draw(function(l,t,w,h) renderer:draw() end)
end

function love.keypressed(key)
  if key == 'r' then
    game:restartLevel()
  end
end
