SoundType = {
  shot = { update = false, settings = { } },
  loopinout = { update = true, settings = { loop = true } },
  music = { update = true, settings = { loop = true } }
}

local Sound = Class:extend()
local LoopState = { stopped = "stopped", playing = "playing", fadein = "fadein", fadeout = "fadeout" }

function Sound:new(file, type, fadein, fadeout)
  self.file = file
  self.type = type
  self.sound = ripple.newSound(file, type.settings)
  self.duration = self.sound:_getLength()
  self.sound:setVolume(type == SoundType.loopinout and 0 or 1)
  self.fadein = fadein or 0
  self.fadeout = fadeout or 0
  self.loop = LoopState.stopped
  self.tween = nil
end

function Sound:play()
  if self.type == SoundType.loopinout then
    if self.loop == LoopState.stopped or self.loop == LoopState.fadeout then
      self.loop = LoopState.fadein
      self.sound:play()
      if self.tween then self.tween:stop() end
      self.tween = flux.to(self.sound.volume, self.fadein * (1 - self.sound:getVolume()), { value = 1 }):oncomplete(function()
        self.loop = LoopState.playing
      end)
    end
  else
    self.sound:play()
  end
end

function Sound:stop()
  if self.type == SoundType.loopinout then
    if self.loop == LoopState.playing or self.loop == LoopState.fadein then
      self.loop = LoopState.fadeout
      if self.tween then self.tween:stop() end
      self.tween = flux.to(self.sound.volume, self.fadeout * (self.sound:getVolume()), { value = 0 }):oncomplete(function()
        self.loop = LoopState.stopped
        self.sound:stop()
      end)
    end
  else
    self.sound:stop()
  end
end

function Sound:update(dt)
  self.sound:update(dt)
end

return Sound
