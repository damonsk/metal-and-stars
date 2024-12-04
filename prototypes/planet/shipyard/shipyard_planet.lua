local shipyard_map_gen = require("__planet-machina__.prototypes.planet.shipyard.shipyard_map_gen")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local meld = require("meld")

local machina = {
    type = "planet",
    name = "shipyard",
    icon = "__planet-machina__/graphics/icons/tenebris.png",
    starmap_icon = "__planet-machina__/graphics/icons/starmap-planet-tenebris.png",
    starmap_icon_size = 512,
    map_gen_settings = meld.overwrite(shipyard_map_gen()),
    gravity_pull = 10,
    distance = 20,
    orientation = 0.400,
    magnitude = 1.0,
    label_orientation = 0.15,
    order = "e[machina]",
    subgroup = "planets",
    pollutant_type = nil,
    solar_power_in_space = 60,
    surface_properties =
    {
        ["day-night-cycle"] = 20 * 60,
        ["magnetic-field"] = meld.delete(),
        pressure = 3000,
        ["solar-power"] = 0,
        gravity = 30
    },
    surface_render_parameters =
    {
        shadow_opacity = 0.0,
    },
    ticks_between_player_effects = 2
}

machina = meld(table.deepcopy(data.raw["planet"]["gleba"]), machina)

data:extend({
    machina,
    {
        type = "space-connection",
        name = "nauvis-machina",
        subgroup = "planet-connections",
        from = "nauvis",
        to = "shipyard",
        order = "b",
        length = 5000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_gleba)
    }
})
