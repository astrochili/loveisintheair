local camera = {}

camera.x = 0
camera.y = 0
camera.scaleX = 1
camera.scaleY = 1
camera.rotation = 0
camera.layers = {}
camera.overlay = { alpha = 0, color = Color.black, oncomplete = nil }
camera.background = nil

local backgroundZ = 0.5

function camera:load()
  self:addLayer("background", backgroundZ)
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

function camera:fadeIn(oncomplete, color, sec)
  self.overlay.color = color or Color.black
  self.overlay.oncomplete = oncomplete
  flux.to(self.overlay, sec or 1, { alpha = 0 }):oncomplete(function()
    if self.overlay.oncomplete then self.overlay.oncomplete() end
  end)
end

function camera:fadeOut(oncomplete, color, sec)
  self.overlay.color = color or Color.black
  self.overlay.oncomplete = oncomplete
  flux.to(self.overlay, sec or 1, { alpha = 1 }):oncomplete(function()
    if self.overlay.oncomplete then self.overlay.oncomplete() end
  end)
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

  if self.overlay ~= nil then
    love.graphics.setColor(lume.color(self.overlay.color, self.overlay.alpha))
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
  end
end

function camera:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
  love.graphics.translate(-self.x, -self.y)
end

function camera:setParallaxBackground(image, levelW, levelH)
  if image then
    self.background = Sprite(image)
  end
  self:addObject(self.background, "background")
end

function camera:updateBackground(levelW, levelH, screenW, screenH)
  screenW = screenW or love.graphics.getWidth()
  screenH = screenH or love.graphics.getHeight()

  local widthScale, heightScale = 1, 1
  if screenW > self.background.image:getWidth() - self.bounds.x2 * backgroundZ then
    local needWidth = screenW + self.bounds.x2 * backgroundZ
    widthScale = needWidth / self.background.image:getWidth()
  end
  if screenH > self.background.image:getHeight() - self.bounds.y2 * backgroundZ then
    local needHeight = screenH + self.bounds.y2 * backgroundZ
    heightScale = needHeight / self.background.image:getHeight()
  end

  self.background.scale = math.max(widthScale, heightScale)
end

function camera:updateBounds(levelW, levelH, screenW, screenH)
  screenW = screenW or love.graphics.getWidth()
  screenH = screenH or love.graphics.getHeight()

  local bounds = {}
  bounds.minX = 0
  bounds.minY = 0
  bounds.maxX = levelW - screenW
  if bounds.maxX < 0 then bounds.maxX = 0 end
  bounds.maxY = levelH - screenH
  if bounds.maxY < 0 then bounds.maxY = 0 end

  camera:setBounds(bounds.minX, bounds.minY, bounds.maxX, bounds.maxY)
  camera:updateBackground(levelW, levelH, screenW, screenH)
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
