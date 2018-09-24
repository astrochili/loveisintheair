local Body = Mesh:extend()

function Body:new(shape, coords, gang)
  Body.super.new(self, shape, coords, "dynamic", Collision.body.class)
  self.collider.body:setFixedRotation(false)
  self.collider.fixtures.main:setRestitution(0.5)
  self.inline = true
  self:setGang(gang)
  looper:addLoop(self)
end

function Body:update(dt)
  Body.super.update(self, dt)

  for _, mesh in ipairs(self.overlaps) do
    if mesh:is(Key) then
      self:setGang(mesh.gang, true)
      lume.remove(self.overlaps, mesh)
      mesh:pickuped()
      mesh:destroy()
    end
  end
end

function Body:setGang(gang, animated)
  animated = animated or false
  self.gang = gang or Gang.red
  self:setColor(Color[self.gang] or Color.trigger, animated and 0.3 or 0)
  self.collisionClass = self.gang and Collision["body_"..self.gang].class or Collision.body.class
  self.collider:setCollisionClass(self.collisionClass)
end

return Body
