local ripple = require('libs/ripple')

local mixer = {}

function mixer:load()
  mixer.tags = {
    sfx = ripple.newTag(),
    music = ripple.newTag(),
    master = ripple.newTag()
  }

  mixer.sounds = {
    -- steam = ripple.newSound('assets/sounds/steam.mp3', {
      -- tags = { self.tags.master, self.tags.sfx },
    -- }),
  }

  mixer.music = {
    gameplay = ripple.newSound('assets/music/memories.mp3', {
      loop = true,
      tags = { self.tags.master, self.tags.music }
    })
  }

  looper:addLoop(self)
end

function mixer:update(dt)
  for _, music in pairs(self.music) do
    music:update(dt)
  end
end

return mixer
