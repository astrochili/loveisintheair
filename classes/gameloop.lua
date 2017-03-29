local gameloop = {}
gameloop.time = 0
gameloop.loops = {}

function gameloop:addLoop(obj)
    table.insert(self.loops, obj)
end

function gameloop:update(dt)
    self.time = self.time + dt
    for loopIndex = 1, #self.loops do
        local obj = self.loops[loopIndex]
        obj:update(dt)
    end
end

return gameloop
