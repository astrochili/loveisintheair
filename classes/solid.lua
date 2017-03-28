local Solid = Class:extend()

function Solid:newRect(x, y, w, h)
  self.type = "rectangle"
  self.collider = world:newRectangleCollider(x, y, w, h, { body_type = 'static' } )
  self.x = x
  self.y = y
  self.width = w
  self.height = h
end

function Solid:newPolygon(vertices)
  self.type = "polygon"
  self.collider = world:newPolygonCollider(vertices, { body_type = 'static' } )
  self.vertices = vertices
end

function Solid:draw()
  love.graphics.setColor(100, 205, 255, 255)
  if self.type == "rectangle" then
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
  elseif self.type == "polygon" then
    love.graphics.polygon("fill", self.vertices)
  end
end

return Solid
