Gang = { red = "red", blue = "blue", green = "green", yellow = "yellow" }

local Zone = Mesh:extend()

function Zone:new(shape, coords, gang, id)
  Zone.super.new(self, shape, coords, "static", Collision.zone.class, Color[gang], id)
  self.gang = gang
end

return Zone
