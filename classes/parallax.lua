local parallax = {}

parallax.x = 0
parallax.y = 0
parallax.scale = 1
parallax.image = love.graphics.newImage("assets/images/background.jpg")

function parallax:draw()
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(self.image, self.x, self.y, 0, self.scale, self.scale)
end

return parallax
