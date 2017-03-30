local Player = Class:extend()

-- Global functions

function Player:new(x, y, r)
  if (r == nil) then r = 32 end

  self.collider = box2d:newCircleCollider(x, y, r, {
    body_type = 'dynamic',
    collision_class = 'ball'
  })
  self.collider.fixtures.main:setRestitution(0.9)
  self.speed = 3000

  self.steam = love.graphics.newParticleSystem(love.graphics.newImage('assets/images/circle.png'), 32)
  self.steam:setParticleLifetime(1, 2)
  self.steam:setColors(255, 255, 255, 255, 255, 255, 255, 0)
  gameloop:addLoop(self)
end

function Player:update(dt)
  pushX, pushY = 0, 0

  if love.keyboard.isDown("right") then
    pushX = self.speed
  elseif love.keyboard.isDown("left") then
    pushX = -self.speed
  end

  if love.keyboard.isDown("up") then
    pushY = -self.speed
  elseif love.keyboard.isDown("down") then
    pushY = self.speed
  end

  if pushX ~= 0 or pushY~= 0 then
    self:push(dt, pushX, pushY)
  end

  self.steam:update(dt)
end

function Player:draw()
  love.graphics.setColor(lume.color(colors.air, 256))
  love.graphics.draw(self.steam)
  love.graphics.setColor(lume.color(colors.ball, 256))
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

  newRadius = self:getRadius() - dt * 2 -- release air
  if newRadius < 1 then newRadius = 1 end
  self:setRadius(newRadius)

  self:releaseSteam(x, y)
end

function Player:releaseSteam(x, y)
  accelerationX = -x/self.speed * 200
  accelerationY = -y/self.speed * 200
  self.steam:setSizes(self:getRadius()/16, self:getRadius()/32)
  self.steam:setPosition(self:getX(), self:getY())
  self.steam:setLinearAcceleration(accelerationX-50, accelerationY-50, accelerationX+50, accelerationY+50)
  self.steam:emit(32)
end

return Player
