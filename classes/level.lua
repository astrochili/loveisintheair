local Level = Class:extend()

function Level:new(name)

  local map = require('assets/maps/' .. name)

  self.name = name
  self.width = map.width * map.tilewidth
  self.height = map.height * map.tileheight
  self.start = { x = 0, y = 0 }
  self.meshes = { }
  self.entities = { }

  for i, layer in ipairs(map.layers) do
    if layer.name == "Solid" or layer.name == "Triggers" then
      for i, obj in ipairs(layer.objects) do
        if obj.type == "" then obj.type = meshTypes.solid end
        local mesh = Mesh(obj.type, obj.shape, Level.settingsForTiledObject(obj))
        table.insert(self.meshes, mesh)
      end
    elseif layer.name == "Entities" then
      for i, obj in ipairs(layer.objects) do
        if obj.name == "Player" then
          self.start.x, self.start.y = obj.x, obj.y
        end
      end
    end
  end

end

function Level:draw()
  for i, mesh in ipairs(self.meshes) do
    mesh:draw()
  end
end


-- Helpers

function Level.settingsForTiledObject(obj)
  if obj.shape == meshShapes.rect then
    return { x = obj.x, y = obj.y, w = obj.width, h = obj.height }
  elseif obj.shape == meshShapes.polygon then
    return Level.verticesFromTiledObject(obj)
  end
end

function Level.verticesFromTiledObject(obj)
  local vertices = {}
  for i, point in ipairs(obj.polygon) do
    table.insert(vertices, obj.x + point.x)
    table.insert(vertices, obj.y + point.y)
  end
  return vertices
end

return Level
