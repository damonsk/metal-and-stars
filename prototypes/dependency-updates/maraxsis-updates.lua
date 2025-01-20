local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

if mods.maraxsis then

    if data.raw["rocket-silo"]["rocket-silo"] ~= nil then
        data.raw["rocket-silo"]["rocket-silo"].fixed_recipe = nil
    end

    if data.raw["space-connection"]["fulgora-maraxsis"] ~= nil then
        data.raw["space-connection"]["fulgora-maraxsis"] = nil
    end

    if data.raw["space-connection"]["maraxsis-tenebris"] ~= nil then
        data.raw["space-connection"]["maraxsis-tenebris"] = nil
    end

    if data.raw["space-connection"]["vulcanus-maraxsis"] ~= nil then
        data.raw["space-connection"]["vulcanus-maraxsis"] = nil
    end

    
    data.raw["planet"]["maraxsis"].orientation = .615
    data.raw["planet"]["maraxsis-trench"].orientation = .6

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
