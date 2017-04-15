require("classes.meshes.collisions")

local Mesh = Class:extend()

MeshShape = { rect = "rectangle", polygon = "polygon", circle = "ellipse" }

function Mesh:new(shape, coords, type, collisionClass, color, id)
  self.shape = shape
  self.color = color or Color.clear
  self.alpha = 1.0
  self.inline = false
  self.id = id or 0
  self.collisionClass = collisionClass
  self.overlaps = {}
  self.isDestroyed = false

  local settings = { body_type = type, collision_class = self.collisionClass }

  if self.shape == MeshShape.polygon then
    self.collider = box2d:newPolygonCollider(coords, settings)
  elseif self.shape == MeshShape.rect then
    self.collider = box2d:newRectangleCollider(coords.x, coords.y, coords.w, coords.h, settings)
  elseif self.shape == MeshShape.circle then
    self.collider = box2d:newCircleCollider(coords.x, coords.y, coords.r, settings)
  end

  if self.collider ~= nil then
    self.collider:setUserData(self)
  end
end

function Mesh:update(dt)
  self:checkCollisions()
end

function Mesh:checkCollisions()
  for _, class in ipairs(Collision[self.collisionClass].settings.enter) do
    local enter, another = self.collider:enter(class)
    if enter then
      lume.push(self.overlaps, another.user_data)
    end
  end

  for _, class in ipairs(Collision[self.collisionClass].settings.exit) do
    local enter, another = self.collider:exit(class)
    if enter then
      lume.remove(self.overlaps, another.user_data)
    end
  end
end

function Mesh:draw()
  love.graphics.setColor(lume.color(self.color, self.alpha * 255))
  if self.shape == MeshShape.polygon or self.shape == MeshShape.rect then
    love.graphics.polygon("fill", self:getPoints())
    if self.inline then
      love.graphics.setColor(lume.color(Color.black, self.alpha * 63))
      love.graphics.polygon("line", self:getPoints())
    end
  elseif self.shape == MeshShape.circle then
    love.graphics.circle("fill", self:getX(), self:getY(), self:getRadius())
    if self.inline then
      love.graphics.setColor(lume.color(Color.black, self.alpha * 63))
      love.graphics.circle("line", self:getX(), self:getY(), self:getRadius())
    end
  end
end

function Mesh:pulse(sec, target, original)
  original = original or self.alpha
  self.alpha = original
  local tween = flux.to(self, sec, { alpha = target })
  tween:ease("quadinout")
  tween:oncomplete(function()
    self:pulse(sec, original, target)
  end)
end

function Mesh:setColor(target, sec, original)
  if sec == 0 then
    self.color = target
    return
  end

  self.color = original or self.color
  local r, g, b = lume.color(self.color)
  local rgb = { r = r, g = g, b = b }
  local r_, g_, b_ = lume.color(target)
  local tween = flux.to(rgb, sec, { r = r_, g = g_, b = b_ })
  tween:ease("linear")
  tween:onupdate(function()
    self.color = string.format("#%02x%02x%02x", rgb.r * 255, rgb.g * 255, rgb.b * 255)
  end)
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

function Mesh:destroy()
  looper:removeLoop(self)
  self.isDestroyed = true
end

return Mesh
