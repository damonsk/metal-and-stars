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
      name = "empty-fuel-canister",
      icon = "__planet-machina__/graphics/icons/empty-fuel-canister.png",
      subgroup = "raw-resource",
      order = "j[ice]",
      inventory_move_sound = space_age_item_sounds.ice_inventory_move,
      pick_sound = space_age_item_sounds.ice_inventory_pickup,
      drop_sound = space_age_item_sounds.ice_inventory_move,
      stack_size = 50,
      weight = 1 * kg,
      random_tint_color = item_tints.ice_blue
    },
    -- OSTENDUS ITEMS
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
      --NIX ITEMS
      {
        type = "item",
        name = "ice-xv",
        icon = "__planet-machina__/graphics/icons/dense-ice-cube.png",
        subgroup = "raw-resource",
        order = "j[ice]",
        inventory_move_sound = space_age_item_sounds.ice_inventory_move,
        pick_sound = space_age_item_sounds.ice_inventory_pickup,
        drop_sound = space_age_item_sounds.ice_inventory_move,
        stack_size = 50,
        weight = 1 * kg,
        random_tint_color = item_tints.ice_blue
      },
      {
        type = "item",
        name = "antimatter",
        icon = "__planet-machina__/graphics/icons/antimatter.png",
        subgroup = "raw-resource",
        order = "j[ice]",
        inventory_move_sound = space_age_item_sounds.ice_inventory_move,
        pick_sound = space_age_item_sounds.ice_inventory_pickup,
        drop_sound = space_age_item_sounds.ice_inventory_move,
        stack_size = 50,
        weight = 1 * kg,
        random_tint_color = item_tints.ice_blue
      },
      {
        type = "item",
        name = "dark-matter-chunk",
        icon = "__planet-machina__/graphics/icons/dark-matter-chunk-1.png",
        pictures =
        {
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-chunk-1.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-chunk-1-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-chunk-2.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-chunk-2-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-chunk-3.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-chunk-3-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
        },
        subgroup = "raw-resource",
        order = "j[ice]",
        inventory_move_sound = space_age_item_sounds.ice_inventory_move,
        pick_sound = space_age_item_sounds.ice_inventory_pickup,
        drop_sound = space_age_item_sounds.ice_inventory_move,
        stack_size = 50,
        weight = 1 * kg,
        random_tint_color = item_tints.ice_blue
      },
      {
        type = "item",
        name = "dark-matter-compressed",
        icon = "__planet-machina__/graphics/icons/dark-matter-compressed-1.png",
        pictures =
        {
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-compressed-1.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-compressed-1-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-compressed-2.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-compressed-2-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-compressed-3.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/dark-matter-compressed-3-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
        },
        subgroup = "raw-resource",
        order = "j[ice]",
        inventory_move_sound = space_age_item_sounds.ice_inventory_move,
        pick_sound = space_age_item_sounds.ice_inventory_pickup,
        drop_sound = space_age_item_sounds.ice_inventory_move,
        stack_size = 50,
        weight = 1 * kg,
        random_tint_color = item_tints.ice_blue
      },
      {
        type = "item",
        name = "diamond",
        icon = "__planet-machina__/graphics/icons/diamond.png",
        subgroup = "raw-resource",
        order = "j[ice]",
        inventory_move_sound = space_age_item_sounds.ice_inventory_move,
        pick_sound = space_age_item_sounds.ice_inventory_pickup,
        drop_sound = space_age_item_sounds.ice_inventory_move,
        stack_size = 50,
        weight = 1 * kg,
        random_tint_color = item_tints.ice_blue
      },
      {
        type = "tool",
        name = "anomaly-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__planet-machina__/graphics/icons/anomaly-science-pack.png",
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
        name = "dark-matter-fuel-cell",
        icon = "__planet-machina__/graphics/icons/dark-matter-fuel-cell.png",
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = "__planet-machina__/graphics/icons/dark-matter-fuel-cell.png",
              scale = 0.5,
              mipmap_count = 4
            },
            {
              draw_as_light = true,
              size = 64,
              filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
              scale = 0.5
            }
          }
        },
        subgroup = "uranium-processing",
        order = "b[uranium-products]-a[uranium-fuel-cell]",
        inventory_move_sound = item_sounds.nuclear_inventory_move,
        pick_sound = item_sounds.nuclear_inventory_pickup,
        drop_sound = item_sounds.nuclear_inventory_move,
        fuel_category = "nuclear",
        burnt_result = "depleted-uranium-fuel-cell",
        fuel_value = "8GJ",
        stack_size = 50,
        weight = 100*kg
      },
      {
        type = "item",
        name = "depleted-fuel-cell",
        icon = "__planet-machina__/graphics/icons/empty-fuel-cell.png",
        subgroup = "uranium-processing",
        order = "b[uranium-products]-b[depleted-uranium-fuel-cell]",
        inventory_move_sound = item_sounds.nuclear_inventory_move,
        pick_sound = item_sounds.nuclear_inventory_pickup,
        drop_sound = item_sounds.nuclear_inventory_move,
        stack_size = 50,
        weight = 100*kg
      },
      {
        type = "item",
        name = "dark-matter-fuel",
        icon = "__planet-machina__/graphics/icons/dark-matter-fuel.png",
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = "__planet-machina__/graphics/icons/dark-matter-fuel.png",
              scale = 0.5,
              mipmap_count = 4
            },
            {
              draw_as_light = true,
              size = 64,
              filename = "__base__/graphics/icons/nuclear-fuel-light.png",
              scale = 0.5
            }
          }
        },
        fuel_category = "chemical",
        fuel_value = "1.21GJ",
        fuel_acceleration_multiplier = 2.5,
        fuel_top_speed_multiplier = 1.15,
        -- fuel_glow_color = {r = 0.1, g = 1, b = 0.1},
        subgroup = "uranium-processing",
        order = "r[uranium-processing]-e[nuclear-fuel]",
        inventory_move_sound = item_sounds.fuel_cell_inventory_move,
        pick_sound = item_sounds.fuel_cell_inventory_pickup,
        drop_sound = item_sounds.fuel_cell_inventory_move,
        stack_size = 1,
        weight = 100*kg
      },
      -- NEUMANN ITEMS
      {
        type = "item",
        name = "nanites",
        icon = "__planet-machina__/graphics/icons/nanites.png",
        pictures =
        {
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanites.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanites-glow.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanites-2.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanites-2-glow.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanites-3.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanites-3-glow.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
        },
        subgroup = "quantum-processing",
        order = "d[quantum]-a",
        inventory_move_sound = instrument_sound("celesta-28"),
        pick_sound = instrument_sound("celesta-30"),
        drop_sound = instrument_sound("celesta-28"),
        stack_size = 50,
        weight = 2 * kg
      },
      {
        type = "tool",
        name = "nanite-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__planet-machina__/graphics/icons/nanite-science-pack.png",
        pictures =
        {
          {
            layers =
            {
              {
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanite-science-pack.png",
                scale = 0.5,
                mipmap_count = 4
              },
              {
                draw_as_light = true,
                blend_mode = "additive",
                size = 64,
                filename = "__planet-machina__/graphics/icons/nanite-science-emission.png",
                scale = 0.5,
                tint = {0.3, 0.0, 0.0, .3}
              }
            }
          },
        },
        subgroup = "science-pack",
        color_hint = { text = "L" },
        order = "b[nanite-science-pack]",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        weight = 1 * kg,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        random_tint_color = item_tints.bluish_science
      },
})