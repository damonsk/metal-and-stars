local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local meld = require("meld")

data:extend({
    {
        type = "item",
        name = "mirandite-asteroid-chunk",
        icon = "__planet-machina__/graphics/icons/mirandite-asteroid-chunk.png",
        subgroup = "space-material",
        order = "b[mirandite]-e[chunk]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
      },
      {
        type = "item",
        name = "neodymium-ore",
        icon = "__planet-machina__/graphics/icons/neodymium-ore.png",
        pictures =
        {
          {size = 64, filename = "__planet-machina__/graphics/icons/neodymium-ore.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/neodymium-ore-1.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/neodymium-ore-2.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/neodymium-ore-3.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-resource",
        order = "d[neodymium]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
      },
      {
        type = "item",
        name = "thorium",
        icon = "__planet-machina__/graphics/icons/thorium.png",
        subgroup = "uranium-processing",
        order = "a[uranium-processing]-c[uranium-238]",
        inventory_move_sound = item_sounds.nuclear_inventory_move,
        pick_sound = item_sounds.nuclear_inventory_pickup,
        drop_sound = item_sounds.nuclear_inventory_move,
        stack_size = 100,
        weight = 50*kg
      },
      {
        type = "item",
        name = "uranium-233",
        icon = "__planet-machina__/graphics/icons/uranium-233.png",
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = "__planet-machina__/graphics/icons/uranium-233.png",
              scale = 0.5,
              mipmap_count = 4
            },
            {
              draw_as_light = true,
              blend_mode = "additive",
              size = 64,
              filename = "__planet-machina__/graphics/icons/uranium-233.png",
              scale = 0.5,
              tint = {0.3, 0.3, 0.3, 0.3}
            }
          }
        },
        subgroup = "uranium-processing",
        order = "a[uranium-processing]-c[uranium-233]",
        inventory_move_sound = item_sounds.nuclear_inventory_move,
        pick_sound = item_sounds.nuclear_inventory_pickup,
        drop_sound = item_sounds.nuclear_inventory_move,
        stack_size = 100,
        weight = 50*kg
      },
      {
        type = "item",
        name = "neodymium-plate",
        icon = "__planet-machina__/graphics/icons/neodymium-plate.png",
        subgroup = "raw-resource",
        order = "d[stone]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
      },
      {
        type = "item",
        name = "gold-ore",
        icon = "__planet-machina__/graphics/icons/gold-ore-1.png",
        pictures =
        {
          {size = 64, filename = "__planet-machina__/graphics/icons/gold-ore-1.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/gold-ore-2.png", scale = 0.5, mipmap_count = 4},
          {size = 64, filename = "__planet-machina__/graphics/icons/gold-ore-3.png", scale = 0.5, mipmap_count = 4},
        },
        subgroup = "raw-resource",
        order = "d[stone]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
      },
      {
        type = "item",
        name = "gold-plate",
        icon = "__planet-machina__/graphics/icons/gold-ingot.png",
        subgroup = "raw-resource",
        order = "d[stone]d",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
      },
})