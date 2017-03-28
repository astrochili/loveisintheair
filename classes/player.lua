local Player = Class:extend()

-- Global functions

function Player:new(x, y, r)
  self.collider = world:newCircleCollider(x, y, r, {
    body_type = 'dynamic',
    collision_class = 'ball'
  })
  self.collider.fixtures.main:setRestitution(0.9)
  self.speed = 3000
end

function Player:update(dt)
  if love.keyboard.isDown("right") then
    self:push(dt, self.speed, 0)
  elseif love.keyboard.isDown("left") then
    self:push(dt, -self.speed, 0)
  end

  if love.keyboard.isDown("up") then
    self:push(dt, 0, -self.speed)
  elseif love.keyboard.isDown("down") then
    self:push(dt, 0, self.speed)
  end
end

function Player:draw()
  love.graphics.setColor(150, 200, 100, 255)
  love.graphics.circle("fill", self:getX(), self:getY(), self:getRadius())
end

-- Setters and getters

function Player:setX(x)
  self.collider.body:setX(x)
end

function Player:getX()
  return self.collider.body:getX()
end

function Player:setY(y)
  self.collider.body:setY(y)
end

function Player:getY()
  return self.collider.body:getY()
end

function Player:setRadius(radius)
  -- self.collider.shapes.main:setRadius(radius)
  self.collider.fixtures.main:getShape():setRadius(radius)
end

function Player:getRadius()
  -- return self.collider.shapes.main:getRadius()
  return self.collider.fixtures.main:getShape():getRadius()
end

-- Local functions

function Player:push(dt, x, y)
  self.collider.body:applyForce(x, y) -- push ball

  newRadius = self:getRadius() - dt -- release air
  if newRadius < 5 then
    newRadius = 5
  end

  self:setRadius(newRadius)

end

return Player
