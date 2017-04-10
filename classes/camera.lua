local camera = {}

camera.x = 0
camera.y = 0
camera.scaleX = 1
camera.scaleY = 1
camera.rotation = 0
camera.layers = {}

function camera:load()
  love.graphics.setBackgroundColor(lume.color(colors.sky, 256))

  self:addLayer("background", 0.2)
  self:addLayer("level", 1.0)
  self:addLayer("entities", 1.0)
  self:addLayer("player", 1.0)
end

function camera:addLayer(name, scale)
  local layer = { name = name, scale = scale, items = {} }
  table.insert(self.layers, layer)
end

function camera:addObject(obj, layerName)
  for _, layer in pairs(self.layers) do
    if layer.name == layerName then
      table.insert(layer.items, obj)
      break
    end
  end
end

function camera:clear()
   for _, layer in pairs(self.layers) do
      layer.items = {}
    end
end

function camera:draw()
  local bx, by = self.x, self.y
  for _, layer in pairs(self.layers) do
    self.x = bx * layer.scale
    self.y = by * layer.scale
    for _, obj in ipairs(layer.items) do
      if obj.draw then
        camera:set()
        obj:draw()
        camera:unset()
      end
    end
  end

  if settings.debug then
    camera:set()
    box2d:draw()
    camera:unset()
  end

end

function camera:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
  love.graphics.translate(-self.x, -self.y)
end

function camera:unset()
  love.graphics.pop()
end

function camera:move(dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end

function camera:rotate(dr)
  self.rotation = self.rotation + dr
end

function camera:scale(sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end

function camera:setX(value)
  if self.bounds then
    self.x = lume.clamp(value, self.bounds.x1, self.bounds.x2)
  else
    self.x = value
  end
end

function camera:setY(value)
  if self.bounds then
    self.y = lume.clamp(value, self.bounds.y1, self.bounds.y2)
  else
    self.y = value
  end
end

function camera:setCenter(x, y)
  x = x - love.graphics.getWidth() / 2
  y = y - love.graphics.getHeight() / 2
  self:setPosition(x, y)
end

function camera:setPosition(x, y)
  if x then self:setX(x) end
  if y then self:setY(y) end
end

function camera:setScale(sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end

function camera:getBounds()
  return unpack(self.bounds)
end

function camera:setBounds(x1, y1, x2, y2)
  self.bounds = { x1 = x1, y1 = y1, x2 = x2, y2 = y2 }
end

return camera
