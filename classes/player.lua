local Player = Class:extend()

playerState = { default = "default", riseup = "riseup", risedown = "risedown", death = "death" }

-- Global functions

function Player:new(x, y, r, gang)
  r = r or 32
  self.gang = gang or Gang.red

  local settings = { body_type = 'dynamic', collision_class = Collision.player.class }
  self.collider = box2d:newCircleCollider(x, y, r, settings)
  self.collider.fixtures.main:setRestitution(0.9)
  self.speed = 3000
  self.states = {}

  self.steam = love.graphics.newParticleSystem(love.graphics.newImage('assets/images/circle.png'), 32)
  self.steam:setParticleLifetime(1, 2)
  self.steam:setColors(255, 255, 255, 255, 255, 255, 255, 0)
end

function Player:draw()
  love.graphics.setColor(lume.color(Color.steam, 256))
  love.graphics.draw(self.steam)
  love.graphics.setColor(lume.color(Color[self.gang], 256))
  love.graphics.circle("fill", self:getX(), self:getY(), self:getRadius())
end

function Player:update(dt)
  self.steam:update(dt)

  if self:getState(playerState.death) then
    return
  end

  if self:checkCollisions() == true then
    return
  end
  self:riseIfRequied(dt)
  self:pushIfRequied(dt)

  if self:getRadius() < 1 or self:getRadius() > 48  then
    self:destroy()
  end
end


-- Local functions

function Player:checkCollisions()
  -- if self.collider:enter(Exit.collisionClass) then
  --   game:nextLevel()
  --   return true
  -- end
  --
  -- if self.collider:enter(Zone.collisionClass) then
  --   self:addState(playerState.riseup)
  -- elseif self.collider:exit(Zone.collisionClass) then
  --   self:removeState(playerState.riseup)
  -- end
  --
  -- if self.collider:enter(Zone.collisionClass) then
  --   self:addState(playerState.risedown)
  -- elseif self.collider:exit(Zone.collisionClass) then
  --   self:removeState(playerState.risedown)
  -- end
end


function Player:riseIfRequied(dt)
  if self:getState(playerState.riseup) then
    newRadius = self:getRadius() + dt * 5
    self:setRadius(newRadius)
  end

  if self:getState(playerState.risedown) then
    newRadius = self:getRadius() - dt * 50
    self:setRadius(newRadius)
  end
end


function Player:pushIfRequied(dt)
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
end


function Player:push(dt, x, y)
  self.collider.body:applyForce(x, y) -- push ball

  newRadius = self:getRadius() - dt * 3
  self:setRadius(newRadius)
  self:releaseSteam(x, y)

end


function Player:releaseSteam(x, y)
  accelerationX = -x/self.speed * 200
  accelerationY = -y/self.speed * 200
  self.steam:setSizes(self:getRadius()/16, self:getRadius()/32)
  self.steam:setPosition(self:getX(), self:getY())
  self.steam:setLinearAcceleration(accelerationX-50, accelerationY-50, accelerationX+50, accelerationY+50)
  self.steam:emit(1)
end


function Player:destroy()
  self:addState(playerState.death)
  self.steam:emit(8)
  self:setRadius(0)
  self.speed = 0
  self.collider.body:setLinearVelocity(0, 0)
end


-- Setters and getters

function Player:addState(state)
  table.insert(self.states, state)
  -- print("state added: " .. state)
end

function Player:removeState(state)
  table.remove(self.states, lume.find(self.states, state))
  -- print("state removed: " .. state)
end

function Player:getState(state)
  if lume.find(self.states, state) then
    return true
  else
    return false
  end
end

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
  self.collider.fixtures.main:getShape():setRadius(radius)
  self.collider.sensors.main:getShape():setRadius(radius)
end

function Player:getRadius()
  return self.collider.fixtures.main:getShape():getRadius()
end

return Player
