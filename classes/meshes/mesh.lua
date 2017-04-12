Collision = {
  player = {
    class = "player",
    settings = {
      ignores = { "zone", "switch", "key", "exit" },
      enter = { "zone", "switch", "key", "exit" },
      exit = { "zone", "switch" }
    }
  },
  body = { class = "body" },
  exit = { class = "exit" },
  key = { class = "key" },
  solid = { class = "solid" },
  switch = { class = "switch" },
  zone = { class = "zone" }
}

local Mesh = Class:extend()

MeshShape = { rect = "rectangle", polygon = "polygon", circle = "ellipse" }

function Mesh:new(shape, coords, type, collision, color, id)
  self.shape = shape
  self.color = color or Color.clear
  self.id = id or 0

  local settings = { body_type = type, collision_class = collision }

  if self.shape == MeshShape.polygon then
    self.collider = box2d:newPolygonCollider(coords, settings)
  elseif self.shape == MeshShape.rect then
    self.collider = box2d:newRectangleCollider(coords.x, coords.y, coords.w, coords.h, settings)
  elseif self.shape == MeshShape.circle then
    self.collider = box2d:newCircleCollider(coords.x, coords.y, coords.r, settings)
  end
end

function Mesh:draw()
  love.graphics.setColor(lume.color(self.color, 256))
  if self.shape == MeshShape.polygon or self.shape == MeshShape.rect then
    love.graphics.polygon("fill", self:getPoints())
  elseif self.shape == MeshShape.circle then
    love.graphics.circle("fill", self:getX(), self:getY(), self:getRadius())
  end
end

function Mesh:setX(x)
  self.collider.body:setX(x)
end

function Mesh:getX()
  return self.collider.body:getX()
end

function Mesh:setY(y)
  self.collider.body:setY(y)
end

function Mesh:getY()
  return self.collider.body:getY()
end

function Mesh:setAngle(angle)
  self.collider.body:setAngle(angle)
end

function Mesh:getAngle()
  return self.collider.body:getAngle()
end

function Mesh:setRadius(radius)
  self.collider.fixtures.main:getShape():setRadius(radius)
  self.collider.sensors.main:getShape():setRadius(radius)
end

function Mesh:getRadius()
  return self.collider.fixtures.main:getShape():getRadius()
end

function Mesh:getPoints()
  if self.shape == MeshShape.polygon then
    return self.collider.fixtures.main:getShape():getPoints()
  else
    return self.collider.body:getWorldPoints(self.collider.fixtures.main:getShape():getPoints())
  end
end

return Mesh
