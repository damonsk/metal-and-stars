local sounds = require("__base__.prototypes.entity.sounds")
local resource_autoplace = require("resource-autoplace")

resource_autoplace.initialize_patch_set("mirandite", true)

local stone_driving_sound =
{
  sound =
  {
    filename = "__base__/sound/driving/vehicle-surface-stone.ogg", volume = 0.8,
    advanced_volume_control = {fades = {fade_in = {curve_type = "cosine", from = {control = 0.5, volume_percentage = 0.0}, to = {1.5, 100.0 }}}}
  },
  fade_ticks = 6
}


  data:extend({
      {
        type = "resource",
        name = "mirandite",
        icon = "__planet-machina__/graphics/icons/" .. "mirandite" .. ".png",
        flags = {"placeable-neutral"},
        order="a-b-".."b",
        tree_removal_probability = 1,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          -- mining_particle = "mirandite" .. "-particle",
          mining_time = 1,
          result = "mirandite"
        },
        category = "basic-solid",
        subgroup = "raw-resource",
        walking_sound = sounds.ore,
        driving_sound = stone_driving_sound,
        collision_mask = nil,
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = "ostendus-mirandite",
          order = "a-b-".."b",
          base_density = 100,
          -- base_spots_per_km = autoplace_parameters.base_spots_per_km2,
          has_starting_area_placement = true,
          regular_rq_factor_multiplier = 1.10,
          starting_rq_factor_multiplier = 1.5,
          random_spot_size_minimum = .1,
          random_spot_size_maximum = .2,
          candidate_spot_count = 22,
          -- tile_restriction = autoplace_parameters.tile_restriction
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
          sheet =
          {
            filename = "__planet-machina__/graphics/entity/" .. "mirandite" .. "/" .. "mirandite" .. ".png",
            priority = "extra-high",
            size = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5
          }
        },
        map_color = {0.715, 0.725, 0.780},
        mining_visualisation_tint = {r = 0.895, g = 0.965, b = 1.000, a = 1.000}, -- #e4f6ffff
        -- factoriopedia_simulation = resource_parameters.factoriopedia_simulation
      },
      {
        type = "autoplace-control",
        name = "ostendus-mirandite",
        localised_name = {"", "[entity=mirandite] ", {"entity-name.mirandite"}},
        richness = true,
        order = "z-a",
        category = "resource"
      },
  })