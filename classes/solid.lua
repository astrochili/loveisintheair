local Solid = Class:extend()

function Solid.newRect(x, y, w, h)
  solid = Solid()
  solid.type = "rectangle"
  solid.collider = box2d:newRectangleCollider(x, y, w, h, { body_type = 'static' } )
  solid.x = x
  solid.y = y
  solid.width = w
  solid.height = h
  return solid
end

function Solid.newPolygon(vertices)
  solid = Solid()
  solid.type = "polygon"
  solid.collider = box2d:newPolygonCollider(vertices, { body_type = 'static' } )
  solid.vertices = vertices
  return solid
end

function Solid:draw()
  love.graphics.setColor(lume.color(colors.solid, 256))
  if self.type == "rectangle" then
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
  elseif self.type == "polygon" then
    love.graphics.polygon("fill", self.vertices)
  end
end

return Solid
