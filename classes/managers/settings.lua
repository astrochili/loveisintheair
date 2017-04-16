Color = {
  red = "#FF5D73",
  blue = "#094D92",
  green = "#89EA59",
  yellow = "#F9FF51",

  trigger = "#FFFFFF",
  exit = "#C7EAE4",

  steam = "#FFFFFF",

  clear = "#00000000",
  white = "#FFFFFF",
  black = "#000000"
}

local settings = { debug = false }

function settings:load()
  self.title = love.window.getTitle()
  self.music = true
  love.mouse.setVisible(false)
  looper:addLoop(self)
end

function settings:toggleMusic()
  self.music = not self.music
  if self.music then
    mixer.sounds.music:play()
  else
    mixer.sounds.music:stop()
  end
end

function settings:update(dt)
  if self.debug then
    love.window.setTitle(self.title .. ", FPS: " .. love.timer.getFPS())
  end
end

return settings
