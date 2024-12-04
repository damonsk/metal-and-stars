local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local meld = require("meld")

local function instrument_sound(filename)
  return
  {
    filename = "__base__/sound/programmable-speaker/"..filename..".ogg",
    volume = .7,
    aggregation = {max_count = 1, remove = true},
  }
end

data:extend({
    {
        type = "item",
        name = "quantite-a",
        icon = "__planet-machina__/graphics/icons/quantite.png",
        pictures =
        {
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-1.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-2.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-3.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-a",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        spoil_ticks = 1 * minute,
        spoil_result = "quantite-b",
        weight = 2 * kg
      },
      {
        type = "item",
        name = "quantite-b",
        icon = "__planet-machina__/graphics/icons/quantite.png",
        pictures =
        {
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-1.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-2.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-3.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-a",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        spoil_ticks = 1 * minute,
        spoil_result = "quantite-c",
        weight = 2 * kg
      },
      {
        type = "item",
        name = "quantite-c",
        icon = "__planet-machina__/graphics/icons/quantite.png",
        pictures =
        {
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-1.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-2.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/quantite-3.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-a",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        spoil_ticks = 1 * minute,
        spoil_result = "quantite-a",
        weight = 2 * kg
      },


      {
        type = "item",
        name = "quantum-shard-a",
        icon = "__planet-machina__/graphics/icons/material-crystal.png",
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = "__planet-machina__/graphics/icons/material-crystal.png",
              scale = 0.5,
              mipmap_count = 4
            },
            {
              draw_as_light = true,
              blend_mode = "additive",
              size = 64,
              filename = "__planet-machina__/graphics/icons/material-crystal-glow.png",
              scale = 0.5,
              tint = {0.3, 0.0, 0.0, .3}
            }
          }
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-a",
        inventory_move_sound = instrument_sound("celesta-28"),
        pick_sound = instrument_sound("celesta-30"),
        drop_sound = instrument_sound("celesta-28"),
        stack_size = 50,
        spoil_ticks = .5 * minute,
        spoil_result = "quantum-shard-b",
        weight = 2 * kg
      },
      {
        type = "item",
        name = "quantum-shard-b",
        icon = "__planet-machina__/graphics/icons/material-crystal-1.png",
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = "__planet-machina__/graphics/icons/material-crystal-1.png",
              scale = 0.5,
              mipmap_count = 4
            },
            {
              draw_as_light = true,
              blend_mode = "additive",
              size = 64,
              filename = "__planet-machina__/graphics/icons/material-crystal-1-glow.png",
              scale = 0.5,
              tint = {0.3, 0.0, 0.3, .3}
            }
          }
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-b",
        inventory_move_sound = instrument_sound("celesta-30"),
        pick_sound = instrument_sound("celesta-32"),
        drop_sound = instrument_sound("celesta-30"),
        stack_size = 50,
        spoil_ticks = .5 * minute,
        spoil_result = "quantum-shard-c",
        weight = 2 * kg
      },
      {
        type = "item",
        name = "quantum-shard-c",
        icon = "__planet-machina__/graphics/icons/material-crystal-2.png",
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = "__planet-machina__/graphics/icons/material-crystal-2.png",
              scale = 0.5,
              mipmap_count = 4
            },
            {
              draw_as_light = true,
              blend_mode = "additive",
              size = 64,
              filename = "__planet-machina__/graphics/icons/material-crystal-2-glow.png",
              scale = 0.5,
              tint = {0, 0, 0.3, .3}
            }
          }
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-c",
        inventory_move_sound = instrument_sound("celesta-32"),
        pick_sound = instrument_sound("celesta-34"),
        drop_sound = instrument_sound("celesta-32"),
        stack_size = 50,
        spoil_ticks = .5 * minute,
        spoil_result = "quantum-shard-a",
        weight = 0.5 * kg
      },

      {
        type = "tool",
        name = "quantum-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__planet-machina__/graphics/icons/quantum-science-pack.png",
        subgroup = "science-pack",
        color_hint = { text = "L" },
        order = "b[quantum-science-pack]",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        weight = 1 * kg,
        durability = 1,
        spoil_ticks = 1 * hour,
        spoil_result = "quantum-science-pack",
        durability_description_key = "description.science-pack-remaining-amount-key",
        factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        random_tint_color = item_tints.bluish_science
      },

      {
        type = "item",
        name = "volatile-quantum-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__planet-machina__/graphics/icons/volatile-quantum-science.png",
        subgroup = "raw-material",
        color_hint = { text = "L" },
        order = "b[quantum-science-pack]",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        spoil_ticks = .5 * minute,
        spoil_result = "unstable-quantum-science-pack",
        weight = 1 * kg,
        durability = 1,
        random_tint_color = item_tints.bluish_science
      },
      {
        type = "item",
        name = "unstable-quantum-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__planet-machina__/graphics/icons/unstable-quantum-science.png",
        subgroup = "raw-material",
        color_hint = { text = "L" },
        order = "b[quantum-science-pack]",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        spoil_ticks = .5 * minute,
        spoil_result = "inert-quantum-science-pack",
        weight = 1 * kg,
        durability = 1,
        random_tint_color = item_tints.bluish_science
      },
      {
        type = "item",
        name = "inert-quantum-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__planet-machina__/graphics/icons/inert-quantum-science.png",
        subgroup = "raw-material",
        color_hint = { text = "L" },
        order = "b[quantum-science-pack]",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        weight = 1 * kg,
        durability = 1,
        random_tint_color = item_tints.bluish_science
      },
})