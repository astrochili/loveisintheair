local Switch = Mesh:extend()

function Switch:new(shape, coords, targetId)
  Switch.super.new(self, shape, coords, "static", Collision.switch.class, Color.trigger)
  self.targetId = targetId
  self.target = nil
  self.alpha = 0.8
  self:pulse(2, 0.7)
  self.timer = 0
  self.tween = nil
  looper:addLoop(self)
end

function Switch:update(dt)
  Switch.super.update(self, dt)

  if #self.overlaps > 0 and self.timer == 0 then
    self.timer = 1
    self.tween = flux.to(self, 2, { timer = 0 })
    self:toggle()
  elseif #self.overlaps == 0 and self.tween then
    self.tween:stop()
    self.tween = nil
    self.timer = 0
  end
end

function Switch:toggle()
  local target = self:getTarget()
  if target == nil then return end

  local keys = lume.keys(Gang)
  local i = lume.find(keys, target.gang)

  mixer.sounds.switch:play()
  if i == #keys then
    target:setGang(Gang[keys[1]], true)
  else
    target:setGang(Gang[keys[i+1]], true)
  end
end

function Switch:getTarget()
  if self.targer == nil then
    self.target = game.level:find(self.targetId)
  end
  return self.target
end

return Switch
