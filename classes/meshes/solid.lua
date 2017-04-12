local Solid = Mesh:extend()

function Solid:new(shape, coords, color)
  Solid.super.new(self, shape, coords, "static", Collision.solid.class, color)
end

return Solid
