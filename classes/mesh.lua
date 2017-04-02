local Mesh = Class:extend()

meshTypes = { solid = "solid", health = "health", exit = "exit" }
meshShapes = { rect = "rectangle", polygon = "polygon" }

function Mesh:new(type, shape, coords)
  self.type = type
  self.shape = shape
  self.color = colors[self.type]
  self.solid = (type == meshTypes.solid)
  local settings = { body_type = self.solid and 'static' or 'kinematic', collision_class = type }

  if self.shape == meshShapes.polygon then
    self.vertices = coords
    self.collider = box2d:newPolygonCollider(self.vertices, settings)
  elseif self.shape == meshShapes.rect then
    self.x, self.y, self.width, self.height = coords.x, coords.y, coords.w, coords.h
    self.collider = box2d:newRectangleCollider(self.x, self.y, self.width, self.height, settings)
  end
end

function Mesh:draw()
  love.graphics.setColor(lume.color(self.color, 256))
  if self.shape == meshShapes.rect then
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
  elseif self.shape == meshShapes.polygon then
    love.graphics.polygon("fill", self.vertices)
  end
end

return Mesh
