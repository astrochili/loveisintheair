colors = {
  ball = "#FF6663",
  sky = "#020122",
  solid = "#58913A",
  exit = "rgb(128, 128, 227, 0.3)",
  health = "rgba(246, 168, 90, 0.5)",
  air = "#BDBCE2"
}

local settings = {}
settings.debug = true

function settings:load()
  self.title = love.window.getTitle()
  love.mouse.setVisible(false)
  looper:addLoop(self)
end

function settings:update(dt)
  if self.debug then
    love.window.setTitle(self.title .. ", FPS: " .. love.timer.getFPS())
  end
end

return settings
