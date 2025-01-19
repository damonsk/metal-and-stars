local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

data:extend({
    --note: mirandus routes are handled in the mirandus file
    {
        type = "space-connection",
        name = "nauvis-shipyard",
        subgroup = "planet-connections",
        from = "nauvis",
        to = "shipyard",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_gleba)
    },
    {
        type = "space-connection",
        name = "shipyard-ringworld",
        subgroup = "planet-connections",
        from = "shipyard",
        to = "ringworld",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_gleba)
    },
    {
        type = "space-connection",
        name = "shipyard-nix",
        subgroup = "planet-connections",
        from = "shipyard",
        to = "nix",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_gleba)
    },
    {
        type = "space-connection",
        name = "shipyard-fulgora",
        subgroup = "planet-connections",
        from = "shipyard",
        to = "fulgora",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)
    },
    {
        type = "space-connection",
        name = "fulgora-nix",
        subgroup = "planet-connections",
        from = "fulgora",
        to = "nix",
        order = "b",
        length = 7000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)
    },
})