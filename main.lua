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
  flux.update(dt)
  looper:update(dt)
end

function love.draw()
  camera:draw()
end

function love.resize(w, h)
  camera:updateBounds(game.level.width, game.level.height, w, h)
end

function love.keypressed(key)
  if key == 'r' then
    game:restartLevel()
  end
end
