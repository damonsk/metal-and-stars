local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

if mods.maraxsis then

    if data.raw["space-connection"]["fulgora-maraxsis"] ~= nil then
        data.raw["space-connection"]["fulgora-maraxsis"] = nil
    end

    data:extend {{
        type = "space-connection",
        name = "maraxsis-ringworld",
        subgroup = "planet-connections",
        from = "maraxsis",
        to = "ringworld",
        order = "g",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    }}
end
