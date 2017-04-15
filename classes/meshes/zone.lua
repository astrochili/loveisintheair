local Zone = Mesh:extend()

function Zone:new(shape, coords, gang, id)
  Zone.super.new(self, shape, coords, "static", Collision["zone_"..gang].class, Color[gang], id)
  self:setGang(gang)
  self.alpha = 0.8
  self:pulse(2, 0.6)
end

function Zone:setGang(gang, animated)
  animated = animated or false
  self.gang = gang or Gang.red
  self:setColor(Color[self.gang], animated and 0.3 or 0)
  self.collisionClass = Collision["zone_"..self.gang].class
  self.collider:changeCollisionClass(self.collisionClass)
end

return Zone
