layersOrder = { background = 1, level = 2, entities = 3, player = 4, hud = 5 }

local renderer = {}
renderer.layers = {}

function renderer:load()
  love.graphics.setBackgroundColor(lume.color(colors.sky, 256))
  for i = 1, lume.count(layersOrder) do
    self.layers[i] = {}
  end
end

function renderer:addRenderer(obj, layerIndex)
  local i = layerIndex or 1
  table.insert(self.layers[i], obj)
end

function renderer:draw()
  for layerIndex = 1, #self.layers do
    for objIndex = 1, #self.layers[layerIndex] do
      local obj = self.layers[layerIndex][objIndex]
      if obj.draw then
        obj:draw()
      end
    end
  end
end

return renderer