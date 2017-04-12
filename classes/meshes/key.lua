local Key = Mesh:extend()

function Key:new(coords, gang)
  coords.r = 16
  Key.super.new(self, MeshShape.circle, coords, "static", Collision.key.class, Color[gang])
  self.gang = gang
end

return Key
