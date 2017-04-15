Gang = { red = "red", blue = "blue", green = "green", yellow = "yellow" }

Collision = {
  solid = { class = "solid" },
  switch = { class = "switch" },
  key = { class = "key" },
  exit = { class = "exit" },
  body = { class = "body" },
  player = { class = "player" }
}

Collision.body.settings = {
  ignores = { Collision.switch.class, Collision.key.class, Collision.exit.class },
  enter = { Collision.key.class }
}

Collision.player.settings = {
  ignores = { Collision.switch.class, Collision.key.class, Collision.exit.class },
  enter = { Collision.key.class, Collision.exit.class },
  exit = { }
}

for _, gang in pairs(Gang) do
  local zoneClass = "zone_"..gang
  local bodyClass = "body_"..gang

  Collision[zoneClass] = { class = zoneClass }
  Collision[bodyClass] = {
    class = bodyClass,
    settings = {
      ignores = lume.concat(lume.clone(Collision.body.settings.ignores), { zoneClass } ),
      enter = lume.clone(Collision.body.settings.enter)
    }
  }

  lume.push(Collision.player.settings.ignores, zoneClass)
  lume.push(Collision.player.settings.enter, zoneClass)
  lume.push(Collision.player.settings.exit, zoneClass)
end

for _, collision in pairs(Collision) do
  local keys = lume.keys(collision)
  if lume.find(keys, "settings") == nil then
    collision.settings = { }
  end
  keys = lume.keys(collision.settings)
  if lume.find(keys, "ignores") == nil then
    collision.settings.ignores = { }
  end
  if lume.find(keys, "enter") == nil then
    collision.settings.enter = { }
  end
  if lume.find(keys, "exit") == nil then
    collision.settings.exit = { }
  end
end



function Collision.register(world)
  world:addCollisionClass(Collision.solid.class, Collision.solid.settings)
  world:addCollisionClass(Collision.key.class, Collision.key.settings)
  world:addCollisionClass(Collision.exit.class, Collision.exit.settings)
  world:addCollisionClass(Collision.switch.class, Collision.switch.settings)
  world:addCollisionClass(Collision.body.class, Collision.body.settings)

  for _, gang in pairs(Gang) do
    world:addCollisionClass(Collision["zone_"..gang].class, Collision["zone_"..gang].settings)
    world:addCollisionClass(Collision["body_"..gang].class, Collision["body_"..gang].settings)
  end

  world:addCollisionClass(Collision.player.class, Collision.player.settings)

  world:collisionClassesSet()
end
