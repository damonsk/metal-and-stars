
local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local sand_sounds = sound_variations("__base__/sound/walking/sand", 9, 0.8, volume_multiplier("main-menu", 2.9))
local sand_vehicle_speed_modifier = 1.8

local patch_for_inner_corner_of_transition_between_transition = tile_graphics.patch_for_inner_corner_of_transition_between_transition

local sand_driving_sound =
{
  sound =
  {
    filename = "__base__/sound/driving/vehicle-surface-sand.ogg", volume = 0.8,
    advanced_volume_control = {fades = {fade_in = {curve_type = "cosine", from = {control = 0.5, volume_percentage = 0.0}, to = {1.5, 100.0 }}}}
  },
  fade_ticks = 6
}
local ground_to_out_of_map_transition =
{
  to_tiles = out_of_map_tile_type_names,
  transition_group = out_of_map_transition_group_id,

  background_layer_offset = 1,
  background_layer_group = "zero",
  offset_background_layer_by_tile_layer = true,

  spritesheet = "__base__/graphics/terrain/out-of-map-transition/out-of-map-transition.png",
  layout = tile_spritesheet_layout.transition_4_4_8_1_1,
  overlay_enabled = false
}
local sand_transitions =
{
  {
    to_tiles = water_tile_type_names,
    transition_group = water_transition_group_id,

    background_layer_group = "water",
    background_layer_offset = -5,
    masked_background_layer_offset = 1,
    offset_background_layer_by_tile_layer = false,

    spritesheet = "__base__/graphics/terrain/water-transitions/sand.png",
    layout = tile_spritesheet_layout.transition_16_16_16_4_8_short,
    background_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-sand-mask.png",
      --tile_height = 2,
      inner_corner_tile_height = 2,
      outer_corner_tile_height = 2,
      side_tile_height = 2,
      u_transition_tile_height = 2,
      o_transition_count = 1
    },
    background_mask_layout = tile_spritesheet_layout.simple_white_mask
  },
  ground_to_out_of_map_transition
}
local sand_transitions_between_transitions =
{
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = water_transition_group_id,

    spritesheet = "__base__/graphics/terrain/water-transitions/sand-transition.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0_only_u_tall,
    background_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-sand-to-land-mask.png",
      inner_corner_tile_height = 2,
      outer_corner_tile_height = 2,
      side_tile_height = 2,
      o_transition_count = 0
    },
    water_patch = patch_for_inner_corner_of_transition_between_transition,
  },
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/sand-out-of-map-transition.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    overlay_enabled = false
  },
  {
    transition_group1 = water_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_group = "water",
    background_layer_offset = -5,
    masked_background_layer_offset = 1,
    offset_background_layer_by_tile_layer = false,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/sand-shore-out-of-map-transition.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-sand-to-out-of-map-mask.png",
      o_transition_count = 0
    },
    background_mask_layout = tile_spritesheet_layout.simple_3_3_3_1_0_three_way_edge_mask,
    draw_simple_outer_corner_over_diagonal = false,
    apply_waving_effect_on_background_mask = true,
    waving_effect_time_scale = 0.15 * 0.09,
    water_patch = patch_for_inner_corner_of_transition_between_transition
  }
}
local water_to_out_of_map_transition =
{
  to_tiles = out_of_map_tile_type_names,
  transition_group = out_of_map_transition_group_id,

  overlay_layer_group = "zero",
  apply_effect_color_to_overlay = true,

  background_layer_offset = 1,
  background_layer_group = "zero",
  offset_background_layer_by_tile_layer = true,

  spritesheet = "__base__/graphics/terrain/out-of-map-transition/water-out-of-map-transition-tintable.png",
  layout = tile_spritesheet_layout.transition_4_4_8_1_1,
  background_enabled = false,

  apply_waving_effect_on_masks = true,
  waving_effect_time_scale = 0.15 * 0.09,
  mask_enabled = true,
  mask_layout =
  {
    spritesheet = "__base__/graphics/terrain/masks/water-edge-transition.png",
    count = 1,
    double_side_count = 0,
    scale = 0.5,
    outer_corner_x = 64,
    side_x = 128,
    u_transition_x = 192,
    o_transition_x = 256,
    y = 0
  }
}
    -----------///////////////////////////// NOISE STARTS
data:extend({
    {
        type = "noise-expression",
        name = "ringworld_mask",
        expression = "(y<=34) * (y>=-34)"
    },
    {
      type = "noise-expression",
      name = "ringworld_safe_zone",
      expression = "(x<64)*(x>-64)"
    },
    {
      type = "noise-expression",
      name = "ringworld_safe_mask",
      expression = "ringworld_mask*ringworld_safe_zone"
    },
    {
      type = "noise-expression",
      name = "ringworld_danger_mask",
      expression = "ringworld_mask*(1-ringworld_safe_zone)"
    },
    {
      type = "noise-expression",
      name = "ringworld_left_mask",
      expression = "(x<0) * ringworld_danger_mask"
    },
    {
      type = "noise-expression",
      name = "ringworld_right_mask",
      expression = "(x>0) * ringworld_danger_mask"
    },
    {
      type = "noise-expression",
      name = "ringworld_water_rim",
      expression = "((y==33)+(y==34))*ringworld_danger_mask"
    },
    -----------////////////////////////////////////////////////////////////// SAND-1
    {
      name = "sand-1-ringworld",
      type = "tile",
      order = "b[natural]-c[sand]-a[sand-1]",
      subgroup = "nauvis-tiles",
      collision_mask = tile_collision_masks.ground(),
      autoplace = {probability_expression = 'ringworld_right_mask * (max(expression_in_range_base(-10, -10, 0.25, 0.15),\z
                                                 expression_in_range(5, inf, elevation, aux, -1.5, 0.5, 1.5, 1)) +\z
                                             noise_layer_noise(36))'},
      layer = 8,
  
      variants = tile_variations_template(
        "__base__/graphics/terrain/sand-1.png", "__base__/graphics/terrain/masks/transition-4.png",
        {
          max_size = 8,
          [2] = { probability = 0.39, weights = {0.025, 0.010, 0.013, 0.025, 0.025, 0.100, 0.100, 0.005, 0.010, 0.010, 0.005, 0.005, 0.001, 0.015, 0.020, 0.020} },
          [4] = { probability = 0.20, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} },
          [8] = { probability = 0.10, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
        }
      ),
  
      transitions = sand_transitions,
      transitions_between_transitions = sand_transitions_between_transitions,
  
      walking_sound = sand_sounds,
      driving_sound = sand_driving_sound,
      map_color={138, 103, 58},
      scorch_mark_color = {r = 0.588, g = 0.451, b = 0.272, a = 1.000},
      absorptions_per_second = tile_pollution.sand,
      vehicle_friction_modifier = sand_vehicle_speed_modifier,
  
      trigger_effect = tile_trigger_effects.sand_trigger_effect(),
  
    },
    -----------////////////////////////////////////////////////////////////// SAND-2
    {
      name = "sand-2-ringworld",
      type = "tile",
      order = "b[natural]-c[sand]-b[sand-2]",
      subgroup = "nauvis-tiles",
      collision_mask = tile_collision_masks.ground(),
      autoplace = {probability_expression = 'ringworld_right_mask'},
      layer = 9,

      variants = tile_variations_template(
        "__base__/graphics/terrain/sand-2.png", "__base__/graphics/terrain/masks/transition-4.png",
        {
          max_size = 8,
          [2] = { probability = 0.39, weights = {0.025, 0.010, 0.013, 0.025, 0.025, 0.100, 0.100, 0.005, 0.010, 0.010, 0.005, 0.005, 0.001, 0.015, 0.020, 0.020} },
          [4] = { probability = 0.20, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} },
          [8] = { probability = 0.10, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
        }
      ),
      factoriopedia_alternative = "sand-1",

      transitions = sand_transitions,
      transitions_between_transitions = sand_transitions_between_transitions,

      walking_sound = sand_sounds,
      driving_sound = sand_driving_sound,
      map_color={128, 93, 52},
      scorch_mark_color = {r = 0.600, g = 0.440, b = 0.252, a = 1.000},
      absorptions_per_second = tile_pollution.sand,
      vehicle_friction_modifier = sand_vehicle_speed_modifier,

      trigger_effect = tile_trigger_effects.sand_trigger_effect()
    },
    -----------////////////////////////////////////////////////////////////// WATER
    {
      type = "tile",
      name = "ringworld-water",
      order = "a[water]-a[water]",
      collision_mask = tile_collision_masks.water(),
      subgroup = "nauvis-tiles",
      fluid = "water",
      autoplace = {probability_expression = "ringworld_water_rim"},
      effect = "water",
      effect_color = { 21, 147, 167 },
      effect_color_secondary = { 49, 80, 14 },
      particle_tints = tile_graphics.water_particle_tints,
      layer_group = "water",
      layer = 3,
      variants =
      {
        main =
        {
          {
            picture = "__base__/graphics/terrain/water/water1.png",
            count = 1,
            scale = 0.5,
            size = 1
          },
          {
            picture = "__base__/graphics/terrain/water/water2.png",
            count = 1,
            scale = 0.5,
            size = 2
          },
          {
            picture = "__base__/graphics/terrain/water/water4.png",
            count = 1,
            scale = 0.5,
            size = 4
          }
        },
        empty_transitions = true
      },
      transitions = { water_to_out_of_map_transition },
      map_color={51, 83, 95},
      absorptions_per_second = tile_pollution.water,
  
      trigger_effect = tile_trigger_effects.water_trigger_effect(),
  
      default_cover_tile = "landfill",
  
      ambient_sounds =
      {
        sound =
        {
          variations = sound_variations("__base__/sound/world/water/waterlap", 10, 0.6 ),
          advanced_volume_control =
          {
            fades = { fade_in = { curve_type = "S-curve", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } }
          }
        },
        radius = 7.5,
        min_entity_count = 10,
        max_entity_count = 30,
        entity_to_sound_ratio = 0.1,
        average_pause_seconds = 3
      }
    },
})




