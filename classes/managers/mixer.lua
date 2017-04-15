local mixer = {}

function mixer:load()
  mixer.sounds = {
    bump = Sound('assets/sounds/bump.mp3', SoundType.shot),
    exit = Sound('assets/sounds/exit.mp3', SoundType.shot),
    key = Sound('assets/sounds/key.mp3', SoundType.shot),
    bump = Sound('assets/sounds/bump.mp3', SoundType.shot),
    switch = Sound('assets/sounds/switch.mp3', SoundType.shot),
    death = Sound('assets/sounds/death.mp3', SoundType.shot),

    steam = Sound('assets/sounds/steam.mp3', SoundType.loopinout, 0.5, 0.2),
    health = Sound('assets/sounds/health.mp3', SoundType.loopinout, 0.5, 0.2),
    damage = Sound('assets/sounds/damage.mp3', SoundType.loopinout, 0.1, 0.2),

    music = Sound('assets/music/memories.mp3', SoundType.music)
  }

  looper:addLoop(self)
end

function mixer:update(dt)
  for _, sound in pairs(self.sounds) do
    if sound.type.update then sound:update(dt) end
  end
end

return mixer
