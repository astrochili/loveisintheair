local Level = Class:extend()

function Level:new(name)

  local map = require('assets/maps/' .. name)

  self.name = name
  self.width = map.width * map.tilewidth
  self.height = map.height * map.tileheight
  self.start = { x = 0, y = 0, gang = Gang.red }
  self.done = false
  self.meshes = { }
  self.entities = { }
  self.colors = { }
  self.colors.solid = map.properties["solidcolor"]:gsub("#ff", "#")
  self.background = "assets/images/backgrounds/"..map.properties["background"]

  for i, layer in ipairs(map.layers) do
    for i, obj in ipairs(layer.objects) do
      local mesh = nil

      if obj.type == "" and obj.shape ~= "line" then
        mesh = Solid(obj.shape, Level.settingsForTiledObject(obj), self.colors.solid)

      elseif Gang[obj.type] ~= nil then
        if obj.name == "player" then
          self.start.x, self.start.y, self.start.gang = obj.x, obj.y, obj.type
        elseif obj.name == "body" then
          mesh = Body(obj.shape, Level.settingsForTiledObject(obj), obj.type)
        elseif obj.name == "key" then
          mesh = Key(obj.shape, Level.settingsForTiledObject(obj), obj.type)
        else
          mesh = Zone(obj.shape, Level.settingsForTiledObject(obj), obj.type, obj.id)
        end

      elseif obj.type == "trigger" then
        if obj.name == "switch" then
          mesh = Switch(obj.shape, Level.settingsForTiledObject(obj), obj.properties["targetId"])
        elseif obj.name == "exit" then
          mesh = Exit(obj.shape, Level.settingsForTiledObject(obj))
        end
      end

      if mesh ~= nil then
        table.insert(self.meshes, mesh)
      end
    end

    ::continue::
  end

end

function Level:update()
  for _, mesh in ipairs(self.meshes) do
    if mesh.isDestroyed then
      lume.remove(self.meshes, mesh)
      mesh.collider:destroy()
    end
  end
end

function Level:draw()
  for _, mesh in ipairs(self.meshes) do
    mesh:draw()
  end
end


-- Helpers

function Level.settingsForTiledObject(obj)
  if obj.shape == MeshShape.rect then
    return { x = obj.x, y = obj.y, w = obj.width, h = obj.height }
  elseif obj.shape == MeshShape.circle then
    return { x = obj.x, y = obj.y, r = obj.width * 0.5 }
  elseif obj.shape == MeshShape.polygon then
    return Level.verticesFromTiledObject(obj)
  end
end

function Level.verticesFromTiledObject(obj)
  local vertices = {}
  for _, point in ipairs(obj.polygon) do
    table.insert(vertices, obj.x + point.x)
    table.insert(vertices, obj.y + point.y)
  end
  return vertices
end

function Level:destroy()
  for _, mesh in ipairs(self.meshes) do
    looper:removeLoop(mesh)
  end
end

function Level:find(objectId)
  local object = nil

  for _, mesh in ipairs(self.meshes) do
    if mesh.id == objectId then
      return mesh
    end
  end

  return object
end

return Level
