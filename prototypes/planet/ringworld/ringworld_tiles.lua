
local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local snow_sounds = sound_variations("__space-age__/sound/walking/snow", 10, 0.8, volume_multiplier("main-menu", 2.9))
local icy_snow_sounds = sound_variations("__space-age__/sound/walking/icy-snow", 10, 0.8, volume_multiplier("main-menu", 2.9))
local ice_sounds = sound_variations("__space-age__/sound/walking/ice", 10, 0.8, volume_multiplier("main-menu", 2.9))
local smooth_ice_sounds = sound_variations("__space-age__/sound/walking/smooth-ice", 9, 0.8)
local frozen_concrete_sounds = sound_variations("__space-age__/sound/walking/frozen-concrete", 11, 0.8)



data:extend({
    {
        type = "noise-expression",
        name = "ringworld_mask",
        expression = "(y<32) * (y>-32)"
    },
    {
        type = "tile",
        name = "testb-range-tiles",
        subgroup = "vulcanus-tiles",
        order = "a-o",
        collision_mask = tile_collision_masks.ground(),
        autoplace =
        {
          probability_expression = "ringworld_mask"
        },
        layer = vulcanus_tile_offset + 12,
        sprite_usage_surface = "vulcanus",
        variants = tile_variations_template_with_transitions(
          "__space-age__/graphics/terrain/vulcanus/volcanic-ash-flats.png",
          {
            max_size = 4,
            [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
            [2] = { probability = 1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
            [4] = { probability = 0.1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
          }
        ),
        -- transitions = lava_stone_transitions,
        -- transitions_between_transitions = lava_stone_transitions_between_transitions,
        -- walking_sound = soft_sand_sound,
        -- landing_steps_sound = tile_sounds.landing.sand,
        -- driving_sound = sand_driving_sound,
        map_color = {30,30,30},
        walking_speed_modifier = 1,
        vehicle_friction_modifier = 1,
        absorptions_per_second = tile_pollution.lava,
        can_be_part_of_blueprint = false,
    
        trigger_effect = tile_trigger_effects.dirt_2_trigger_effect()
      },
})




