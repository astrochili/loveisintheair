local Body = Mesh:extend()

function Body:new(shape, coords, gang)
  Body.super.new(self, shape, coords, "dynamic", Collision.body.class, gang and Color[gang] or Color.trigger)
  self.collider.body:setFixedRotation(false)
  self.gang = gang
end

return Body
