local Player = Mesh:extend()

playerState = { default = "default", riseup = "riseup", risedown = "risedown", death = "death" }

-- Global functions

function Player:new(x, y, r, gang)
  local coords = { x = x, y = y, r = r or 32 }
  Player.super.new(self, MeshShape.circle, coords, 'dynamic', Collision.player.class)
  self.collider.fixtures.main:setRestitution(0.9)

  self:setGang(gang)
  self.inline = true
  self.speed = 3000
  self.isDead = false
  self.overlaps = {}

  self.steam = love.graphics.newParticleSystem(love.graphics.newImage('assets/images/circle.png'), 32)
  self.steam:setParticleLifetime(1, 2)
  self.steam:setColors(255, 255, 255, 255, 255, 255, 255, 0)
end

function Player:draw()
  love.graphics.setColor(lume.color(Color.steam, 256))
  love.graphics.draw(self.steam)

  if self.isDeath then
    love.graphics.print("Press R to restart level", self:getX(), self:getY(), 0, 1.5, 1.5)
  else
    Player.super.draw(self)
  end
end

function Player:update(dt)
  Player.super.update(self, dt)

  self.steam:update(dt)
  if self.isDeath then return end

  self:pushIfRequied(dt)

  for _, mesh in ipairs(self.overlaps) do
    if mesh:is(Zone) then
      local friendly = (mesh.gang == self.gang)
      local radius = self:getRadius() + dt * (friendly and 5 or -50)
      self:setRadius(radius)
    elseif mesh:is(Key) and mesh.gang ~= self.gang then
      self:setGang(mesh.gang, true)
      lume.remove(self.overlaps, mesh)
      mesh:destroy()
    elseif mesh:is(Exit) and not game.level.done then
      game:nextLevel()
      game.level.done = true
      return
    end
  end

  if self:getRadius() < 1 or self:getRadius() > 48  then
    self:kill()
  end
end


-- Local functions

function Player:setGang(gang, animated)
  animated = animated or false
  self.gang = gang or Gang.red
  self:setColor(Color[self.gang], animated and 0.3 or 0)
end

function Player:pushIfRequied(dt)
  local pushX, pushY = 0, 0

  if love.keyboard.isDown("right") then pushX = self.speed
  elseif love.keyboard.isDown("left") then pushX = -self.speed end

  if love.keyboard.isDown("up") then pushY = -self.speed
  elseif love.keyboard.isDown("down") then pushY = self.speed end

  if pushX ~= 0 or pushY~= 0 then
    self:push(dt, pushX, pushY)
  end
end

function Player:push(dt, x, y)
  self.collider.body:applyForce(x, y) -- push ball
  self:setRadius(self:getRadius() - dt * 3)
  self:releaseSteam(x, y)
end

function Player:releaseSteam(x, y)
  local accelerationX = -x/self.speed * 200
  local accelerationY = -y/self.speed * 200
  self.steam:setSizes(self:getRadius()/16, self:getRadius()/32)
  self.steam:setPosition(self:getX(), self:getY())
  self.steam:setLinearAcceleration(accelerationX-50, accelerationY-50, accelerationX+50, accelerationY+50)
  self.steam:emit(1)
end

function Player:kill()
  self.isDeath = true
  self.steam:emit(8)
end

return Player
