local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local mirandus_tenebris =
{
    {
        asteroid = "big-oxide-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        },
    },
    {
        asteroid = "big-mirandite-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        }
    }
}

if mods.tenebris then
    
    data.raw["planet"]["tenebris"].distance = 35
    data.raw["planet"]["tenebris"].orientation = .40
    
    data:extend {
    {
        type = "space-connection",
        name = "mirandus-tenebris",
        subgroup = "planet-connections",
        from = "tenebris",
        to = "mirandus-a",
        order = "g",
        length = 5000,
        asteroid_spawn_definitions = mirandus_tenebris
    },
    {
        type = "space-connection",
        name = "nix-tenebris",
        subgroup = "planet-connections",
        from = "nix",
        to = "tenebris",
        order = "g",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
}

end
