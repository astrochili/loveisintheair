require('requires')

function love.load()
  settings:load()
  camera:load()
  mixer:load()
  game:start()

  -- settings.debug = true
  -- mixer.music.gameplay:play()
end

function love.update(dt)
  looper:update(dt)
end

function love.draw()
  camera:draw()
end

function love.keypressed(key)
  if key == 'r' then
    game:restartLevel()
  end
end
