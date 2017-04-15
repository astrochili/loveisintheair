local Key = Mesh:extend()
Key.image = love.graphics.newImage("assets/images/key.png")

function Key:new(shape, coords, gang)
  coords.r = 16
  Key.super.new(self, shape, coords, "static", Collision.key.class, Color[gang])
  self.gang = gang
  self:pulse(0.5, 0.8)
end

function Key:draw()
  love.graphics.setColor(lume.color(self.color, 256))
  love.graphics.draw(Key.image, self:getX()-16, self:getY()-16)
end

return Key
