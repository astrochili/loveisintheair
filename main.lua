
-- libs
log = require 'libs/log'
hx = require 'libs/hxdx'
lume = require 'libs/lume'

-- classes
Class = require 'libs/classic'
Solid = require 'classes/solid'
Player = require 'classes/player'

function love.load()
  love.window.setMode(800, 600, { msaa = 2 } )

  world = hx.newWorld()
  world:addCollisionClass('ball', nil)

  level = require('levels/level0')
  player = Player(0, 0, 32)
  solids = {}

  for i,layer in ipairs(level.layers) do
    if (layer.name == "Solid") then
      for i,object in ipairs(layer.objects) do
        if object.shape == "rectangle" then
          rect = Solid()
          rect:newRect(object.x, object.y, object.width, object.height)
          table.insert(solids, rect)
        elseif object.shape == "polygon" then
          vertices = {}
          for i,point in ipairs(object.polygon) do
            table.insert(vertices, object.x + point.x)
            table.insert(vertices, object.y + point.y)
          end
          polygon = Solid()
          polygon:newPolygon(vertices)
          table.insert(solids, polygon)
        end
      end
    elseif (layer.name == "Entities") then
      for i,object in ipairs(layer.objects) do
        if object.name == "Player" then
          player:setX(object.x)
          player:setY(object.y)
        end
      end
    end
  end

end

function love.update(dt)

  world:update(dt)
  player:update(dt)

  love.window.setTitle("FPS: " .. love.timer.getFPS())

end

function love.draw()
  -- world:draw()
  player:draw()

  for i,solid in ipairs(solids) do
    solid:draw()
  end

end
