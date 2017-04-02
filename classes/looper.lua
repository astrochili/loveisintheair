local looper = {}
looper.time = 0
looper.loops = {}

function looper:addLoop(obj)
    table.insert(self.loops, obj)
end

function looper:removeLoop(obj)
  local index = lume.find(self.loops, obj)
  if index ~= nil then
    table.remove(self.loops, index)
  end
end

function looper:update(dt)
    self.time = self.time + dt
    for loopIndex = 1, #self.loops do
        local obj = self.loops[loopIndex]
        obj:update(dt)
    end
end

return looper
