local Level = Class:extend()

function Level:new(file)

  local map = require('assets/maps/' .. file)

  self.width = map.width * map.tilewidth
  self.height = map.height * map.tileheight
  self.start = { x = 0, y = 0 }
  self.solids = { }

  for i, layer in ipairs(map.layers) do
    if (layer.name == "Solid") then
      for i, object in ipairs(layer.objects) do
        if object.shape == "rectangle" then
          local rect = Solid.newRect(object.x, object.y, object.width, object.height)
          table.insert(self.solids, rect)
        elseif object.shape == "polygon" then
          local vertices = {}
          for i, point in ipairs(object.polygon) do
            table.insert(vertices, object.x + point.x)
            table.insert(vertices, object.y + point.y)
          end
          local polygon = Solid.newPolygon(vertices)
          table.insert(self.solids, polygon)
        end
      end
    elseif (layer.name == "Entities") then
      for i, object in ipairs(layer.objects) do
        if object.name == "Player" then
          self.start.x = object.x
          self.start.y = object.y
        end
      end
    end
  end

end

function Level:update(dt)

end

function Level:draw()
  for i,solid in ipairs(self.solids) do
    solid:draw()
  end
end

return Level
