local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

if mods.tenebris then
    
    data.raw["planet"]["tenebris"].distance = 35
    data.raw["planet"]["tenebris"].orientation = .40
    
    data:extend {{
        type = "space-connection",
        name = "mirandus-tenebris",
        subgroup = "planet-connections",
        from = "tenebris",
        to = "mirandus-a",
        order = "g",
        length = 5000,
        asteroid_spawn_definitions = mirandus_asteroid.mirandus_nix
    }}

end
