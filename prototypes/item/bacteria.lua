local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
{
    type = "item",
    name = "algae-bacteria",
    icon = "__metal-and-stars-graphics-2__/graphics/icons/algae-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/algae-bacteria.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/algae-bacteria-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/algae-bacteria-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/algae-bacteria-3.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "agriculture-processes",
    order = "b[bioculture]-c[algae-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "calcite"
  },
  {
    type = "item",
    name = "ammoniac-bacteria",
    icon = "__metal-and-stars-graphics-2__/graphics/icons/ammoniac-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/ammoniac-bacteria.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/ammoniac-bacteria-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/ammoniac-bacteria-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/ammoniac-bacteria-3.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "agriculture-processes",
    order = "b[bioculture]-c[ammoniac-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "ice"
  },
  {
    type = "item",
    name = "petro-bacteria",
    icon = "__metal-and-stars-graphics-2__/graphics/icons/petro-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/petro-bacteria.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/petro-bacteria-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/petro-bacteria-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/petro-bacteria-3.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "agriculture-processes",
    order = "b[bioculture]-c[petro-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "sulfur"
  },
  {
    type = "item",
    name = "radio-bacteria",
    icon = "__metal-and-stars-graphics-2__/graphics/icons/radio-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/radio-bacteria.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/radio-bacteria-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/radio-bacteria-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/radio-bacteria-3.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "agriculture-processes",
    order = "b[bioculture]-c[radio-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "uranium-238"
  },
  {
    type = "item",
    name = "thermo-bacteria",
    icon = "__metal-and-stars-graphics-2__/graphics/icons/thermo-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/thermo-bacteria.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/thermo-bacteria-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/thermo-bacteria-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__metal-and-stars-graphics-2__/graphics/icons/thermo-bacteria-3.png", scale = 0.5, mipmap_count = 4 },
    },
    subgroup = "agriculture-processes",
    order = "b[bioculture]-c[thermo-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "stone"
  },

  {
    type = "recipe",
    name = "thermo-bacteria-cultivation",
    icon = "__space-age__/graphics/icons/thermo-bacteria-cultivation.png",
    category = "organic",
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-a[thermo]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "thermo-bacteria", amount = 2},
      {type = "fluid", name = "lava", amount = 15},
    },
    results =
    {
      {type = "item", name = "thermo-bacteria", amount = 7},
      {
        type = "item",
        name = "iron-ore",
        probability = 0.2,
        amount = 1
      },
      {
        type = "item",
        name = "copper-ore",
        probability = 0.2,
        amount = 1
      },
      {
        type = "item",
        name = "stone",
        probability = 0.2,
        amount = 1
      },
    },
    crafting_machine_tint =
    {
      primary = {r = 0.000, g = 0.500, b = 1.000, a = 1.000}, -- #007fffff 
      secondary = {r = 0.095, g = 0.412, b = 0.822, a = 1.000}, -- #1868d1ff
    },
    show_amount_in_title = false
  },

  {
    type = "recipe",
    name = "thermo-bacteria-fermentation",
    icon = "__space-age__/graphics/icons/thermo-bacteria-cultivation.png",
    category = "organic",
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-a[thermo]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "thermo-bacteria", amount = 3},
      {type = "fluid", name = "lava", amount = 15},
    },
    results =
    {
      {type = "fluid", name = "crude-oil", amount = 10},
      {type = "fluid", name = "water", amount = 1},
      {type = "item", name = "calcite", amount = 1}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.000, g = 0.500, b = 1.000, a = 1.000}, -- #007fffff 
      secondary = {r = 0.095, g = 0.412, b = 0.822, a = 1.000}, -- #1868d1ff
    },
    show_amount_in_title = false
  },

  {
    type = "recipe",
    name = "radio-bacteria-cultivation",
    icon = "__space-age__/graphics/icons/radio-bacteria-cultivation.png",
    category = "organic",
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-a[radio]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "radio-bacteria", amount = 4},
      {type = "item", name = "uranium-238", amount = 40},
    },
    results =
    {
      {type = "item", name = "radio-bacteria", amount = 49},
      {type = "item", name = "uranium-235", amount = 1},
    },
    crafting_machine_tint =
    {
      primary = {r = 0.000, g = 0.500, b = 1.000, a = 1.000}, -- #007fffff 
      secondary = {r = 0.095, g = 0.412, b = 0.822, a = 1.000}, -- #1868d1ff
    },
    show_amount_in_title = false
  },

  {
    type = "recipe",
    name = "petro-bacteria-cultivation",
    icon = "__space-age__/graphics/icons/petro-bacteria-cultivation.png",
    category = "organic",
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-a[petro]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "petro-bacteria", amount = 50},
      {type = "item", name = "battery", amount = 100},
      {type = "fluid", name = "heavy-oil", amount = 5000},
    },
    results =
    {
      {type = "item", name = "petro-bacteria", amount = 300},
      {type = "item", name = "iron-plate", amount = 100},
      {type = "fluid", name = "water", amount = 5000},
    },
    crafting_machine_tint =
    {
      primary = {r = 0.000, g = 0.500, b = 1.000, a = 1.000}, -- #007fffff 
      secondary = {r = 0.095, g = 0.412, b = 0.822, a = 1.000}, -- #1868d1ff
    },
    show_amount_in_title = false
  },
  
  {
    type = "recipe",
    name = "ammoniac-bacteria-cultivation",
    icon = "__space-age__/graphics/icons/ammoniac-bacteria-cultivation.png",
    category = "organic",
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-a[ammoniac]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "ammoniac-bacteria", amount = 14},
      {type = "fluid", name = "water", amount = 100}
    },
    results =
    {
      {type = "item", name = "ammoniac-bacteria", amount = 9},
      {type = "fluid", name = "fluoroketone-cold", amount = 100}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.000, g = 0.500, b = 1.000, a = 1.000}, -- #007fffff 
      secondary = {r = 0.095, g = 0.412, b = 0.822, a = 1.000}, -- #1868d1ff
    },
    show_amount_in_title = false
  },

  {
    type = "recipe",
    name = "algae-bacteria-cultivation",
    icon = "__space-age__/graphics/icons/algae-bacteria-cultivation.png",
    category = "organic",
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-a[algae]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "algae-bacteria", amount = 14},
      {type = "item", name = "nutrient", amount = 4},
    },
    results =
    {
      {type = "item", name = "algae-bacteria", amount = 22},
      {type = "item", name = "bioflux", amount = 1}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.000, g = 0.500, b = 1.000, a = 1.000}, -- #007fffff 
      secondary = {r = 0.095, g = 0.412, b = 0.822, a = 1.000}, -- #1868d1ff
    },
    show_amount_in_title = false
  },



})