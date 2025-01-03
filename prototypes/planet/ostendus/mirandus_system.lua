local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local mirandus_aseroids = 
{
  {
    asteroid = "medium-mirandite-asteroid",  
    probability = 0.003,
    angle_when_stopped = 1,
    speed = asteroid_util.standard_speed,
  },
  {
    asteroid = "big-mirandite-asteroid",  
    probability = 0.001,
    angle_when_stopped = 1,
    speed = asteroid_util.standard_speed,
  }
}

local mirandus_nix =
{
    {
        asteroid = "medium-oxide-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        },
    },
    {
        asteroid = "medium-mirandite-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        }
    }
}

local mirandus_ringworld =
{
    {
        asteroid = "medium-carbonic-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        },
    },
    {
        asteroid = "medium-mirandite-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        }
    }
}

local mirandus_shipyard =
{
    {
        asteroid = "medium-metallic-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.5, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        },
    },
    {
        asteroid = "medium-mirandite-asteroid",
        spawn_points = {
        {position = 0.1, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 50},
        {position = 0.9, probability = 0.3, angle_when_stopped = 1, speed = asteroid_util.standard_speed, distance = 500}
        }
    }
}

--small, medium, big, huge
data:extend({
    {
        type = "space-location",
        name = "mirandus-superposition-a",
        starmap_icon = "__planet-machina__/graphics/icons/starmap-mirandus.png",
        starmap_icon_size = 512,
        icon = "__planet-machina__/graphics/icons/mirandus.png",
        order = "f[solar-system-edge]",
        subgroup = "planets",
        gravity_pull = -10,
        distance = 50,
        orientation = 0.25,
        magnitude = 1.0,
        label_orientation = 0.15,
        asteroid_spawn_influence = 1,
        asteroid_spawn_definitions = mirandus_aseroids
    },
    {
        type = "space-connection",
        name = "shipyard-mirandus",
        subgroup = "planet-connections",
        from = "shipyard",
        to = "mirandus-superposition-a",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = mirandus_shipyard
    },
    {
        type = "space-connection",
        name = "ringworld-mirandus",
        subgroup = "planet-connections",
        from = "nauvis",
        to = "mirandus-superposition-a",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = mirandus_ringworld
    },
    {
        type = "space-connection",
        name = "nix-mirandus",
        subgroup = "planet-connections",
        from = "nauvis",
        to = "mirandus-superposition-a",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = mirandus_nix
    },
})

