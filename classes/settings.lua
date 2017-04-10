colors = {
  ball = "#DB2568",
  sky = "#F2E2D2",
  solid = "#56B4F7",
  damage = "rgb(224, 10, 69, 0.5)",
  exit = "rgb(137, 96, 142, 0.5)",
  health = "rgb(96, 153, 45, 0.5)",
  air = "#BDBCE2"
}

local settings = { debug = false }

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
