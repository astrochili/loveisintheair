local Switch = Mesh:extend()

function Switch:new(shape, coords, targetId)
  Switch.super.new(self, shape, coords, "static", Collision.switch.class, Color.trigger)
  self.targetId = targetId
end

return Switch
