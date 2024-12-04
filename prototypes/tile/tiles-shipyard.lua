local tile_trigger_effects = require("__space-age__/prototypes/tile/tile-trigger-effects")
local tile_pollution = require("__base__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local lava_to_out_of_map_transition = space_age_tiles_util.lava_to_out_of_map_transition
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local space_platform_tile_animations = require("__space-age__/prototypes/tile/platform-tile-animations")

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local patch_for_inner_corner_of_transition_between_transition = tile_graphics.patch_for_inner_corner_of_transition_between_transition


data:extend
{
    {
        type = "tile-effect",
        name = "space",
        shader = "space",
        space = {}
      },
      {
        name = "empty-space-shipyard",
        type = "tile",
        order = "z[other]-b[empty-space]",
        subgroup = "special-tiles",
        collision_mask =
        {
          layers=
          {
            ground_tile=true,
            water_tile=true,
            empty_space=true,
            resource=true,
            floor=true,
            item=true,
            object=true,
            player=true,
            doodad=true
          },
        },
        layer_group = "zero",
        layer = 0,
        effect = "space",
        effect_color = {0.5, 0.507, 0},
        effect_color_secondary = { 0, 68, 25 },
        particle_tints =
        {
          primary = {0, 0, 0, 0},
          secondary = {0, 0, 0, 0},
        },
        variants =
        {
          main =
          {
            {
              picture = "__space-age__/graphics/terrain/empty-space.png",
              count = 1,
              size = 1
            }
          },
          empty_transitions = true
        },
        map_color = {0, 0, 0},
        absorptions_per_second = tile_pollution.out_of_map,
        autoplace = {probability_expression = .5},
        default_cover_tile = "space-platform-foundation"
      },
      {
        type = "tile",
        name = "space-platform-foundation-shipyard",
        order = "a[shipyard]-d[utility]-b[space-platform-foundation]",
        subgroup = "artificial-tiles",
        autoplace = {probability_expression = "fulgora_natural_and_mesa_mask"},
        minable = {mining_time = 0.5, result = "space-platform-foundation"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg", volume = 0.8}, -- sound?
        is_foundation = true,
        allows_being_covered = false,
        max_health = 50,
        weight = 200,
        collision_mask = tile_collision_masks.ground(),
        layer = 15,
        dying_explosion = "space-platform-foundation-explosion",
        trigger_effect = tile_trigger_effects.landfill_trigger_effect(),
    
        bound_decoratives =
        {
          "space-platform-decorative-pipes-2x1",
          "space-platform-decorative-pipes-1x2",
          "space-platform-decorative-pipes-1x1",
          "space-platform-decorative-4x4",
          "space-platform-decorative-2x2",
          "space-platform-decorative-1x1",
          "space-platform-decorative-tiny",
        },
    
        build_animations = space_platform_tile_animations.top_animation,
        build_animations_background = space_platform_tile_animations.animation,
        built_animation_frame = 32,
    
        sprite_usage_surface = "space",
        variants =
        {
          main =
          {
            {
              picture = "__space-age__/graphics/terrain/space-platform/space-platform-1x1.png",
              count = 16,
              size = 1,
              scale = 0.5
            },
            {
              picture = "__space-age__/graphics/terrain/space-platform/space-platform-2x2.png",
              count = 16,
              size = 2,
              probability = 0.75,
              scale = 0.5
            },
          },
          transition =
          {
            --background_layer_offset = 1,
            --background_layer_group = "zero",
            --offset_background_layer_by_tile_layer = true,
            draw_background_layer_under_tiles = true,
            --outer_corner_variations_in_group = 8,
            side_variations_in_group = 16,
            double_side_variations_in_group = 4,
    
            overlay_layout =
            {
              inner_corner =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-inner-corner.png",
                count = 16,
                scale = 0.5
              },
              outer_corner =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-outer-corner.png",
                count = 16,
                scale = 0.5
              },
              side =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-side.png",
                count = 32,
                scale = 0.5
              },
              double_side =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-double-side.png",
                count = 8,
                scale = 0.5
              },
              u_transition =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-u.png",
                count = 4,
                scale = 0.5
              },
              o_transition =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-o.png",
                count = 1,
                scale = 0.5
              }
            },
            background_layout =
            {
              inner_corner =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-inner-corner-background.png",
                count = 16,
                scale = 0.5,
                tile_height = 8
              },
              outer_corner =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-outer-corner-background.png",
                count = 16,
                scale = 0.5,
                tile_height = 8
              },
              side =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-side-background.png",
                count = 32,
                scale = 0.5,
                tile_height = 8
              },
              double_side =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-double-side-background.png",
                count = 8,
                scale = 0.5,
                tile_height = 8
              },
              u_transition =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-u-background.png",
                count = 4,
                scale = 0.5,
                tile_height = 8
              },
              o_transition = nil
            },
            mask_layout =
            {
              inner_corner =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-inner-corner-mask.png",
                count = 16,
                scale = 0.5
              },
              outer_corner =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-outer-corner-mask.png",
                count = 16,
                scale = 0.5
              },
              side =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-side-mask.png",
                count = 32,
                scale = 0.5
              },
              double_side =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-double-side-mask.png",
                count = 8,
                scale = 0.5
              },
              u_transition =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-u-mask.png",
                count = 4,
                scale = 0.5
              },
              o_transition =
              {
                spritesheet = "__space-age__/graphics/terrain/space-platform/space-platform-o-mask.png",
                count = 1,
                scale = 0.5
              }
            }
          },
    
          -- material_background =
          -- {
          --   picture = "__space-age__/graphics/terrain/space-platform/space-platform.png",
          --   count = 8,
          --   scale = 0.5
          -- }
        },
    
        walking_sound = concrete_sounds,
        build_sound = space_platform_tile_build_sounds,
        map_color = {63, 61, 59},
        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000}
      },
      {
        type = "tile",
        name = "grey-goo-tile",
        order = "b[tenebris]-a[sulfuric-acid]",
        subgroup = "gleba-water-tiles",
        collision_mask = tile_collision_masks.shallow_water(),
        autoplace = {probability_expression = "noise_layer_noise(1) - 0.4"},
        lowland_fog = true,
        particle_tints = tile_graphics.gleba_shallow_water_particle_tints,
        layer = 1,
        layer_group = "water-overlay",
        sprite_usage_surface = "gleba",
        variants =
        {
          main =
          {
            {
              picture = "__planet-machina__/graphics/tile/sulfuric-acid.png",
              count = 1,
              scale = 0.5,
              size = 1
            }
          },
          empty_transitions=true,
        },
        transitions = {lava_to_out_of_map_transition},
        transitions_between_transitions = data.raw.tile["water"].transitions_between_transitions,
        walking_sound = sound_variations("__base__/sound/walking/shallow-water", 7, 1),
        landing_steps_sound = tile_sounds.landing.wet,
        driving_sound = wetland_driving_sound,
        map_color = {155,142,58},
        walking_speed_modifier = 0.8,
        vehicle_friction_modifier = 8.0,
        -- trigger_effect = tile_trigger_effects.shallow_water_trigger_effect(),
        default_cover_tile = "space-platform-foundation",
        fluid = "grey-goo",
        ambient_sounds = lake_ambience
      }
}
