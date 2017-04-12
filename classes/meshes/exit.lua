local Exit = Mesh:extend()

function Exit:new(shape, coords)
  Exit.super.new(self, shape, coords, "static", Collision.exit.class, Color.exit)
end

return Exit
