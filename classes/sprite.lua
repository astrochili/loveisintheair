local Sprite = Class:extend()

function Sprite:new(file, x, y, scale)
  self.x = x or 0
  self.y = y or 0
  self.scale = scale or 1
  self.image = love.graphics.newImage(file)
  self.alpha = 1
end

function Sprite:draw()
  love.graphics.setColor(255, 255, 255, self.alpha * 255)
  love.graphics.draw(self.image, self.x, self.y, 0, self.scale, self.scale)
end

return Sprite
