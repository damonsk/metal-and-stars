data:extend({
  --//// Fuel Recipes
  {
    type = "recipe",
    name = "liquid-rocket-fuel",
    icon = "__planet-machina__/graphics/icons/molten-glass.png",
    energy_required = 5,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {type = "item", name = "solid-fuel", amount = 10},
      {type = "fluid", name = "light-oil", amount = 10}
    },
    results = {{type="fluid", name="liquid-rocket-fuel", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
    },
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "liquid-nuclear-fuel",
    icon = "__planet-machina__/graphics/icons/molten-glass.png",
    energy_required = 5,
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {type = "item", name = "uranium-235", amount = 1},
      {type = "fluid", name = "liquid-rocket-fuel", amount = 10}
    },
    results = {{type="fluid", name="liquid-nuclear-fuel", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
    },
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "liquid-dark-matter-fuel",
    icon = "__planet-machina__/graphics/icons/molten-glass.png",
    energy_required = 5,
    enabled = false,
    category = "compression",
    ingredients =
    {
      {type = "item", name = "dark-matter-chunk", amount = 1},
      {type = "fluid", name = "liquid-rocket-fuel", amount = 10}
    },
    results = {{type="fluid", name="liquid-dark-matter-fuel", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
    },
    allow_productivity = true
  },
  --//// unbottling Recipes
  {
    type = "recipe",
    name = "empty-liquid-rocket-fuel",
    icon = "__planet-machina__/graphics/icons/molten-glass.png",
    energy_required = .04,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "empty-barrel",
    ingredients =
    {
      {type = "item", name = "rocket-fuel", amount = 1},
    },
    results = {{type="fluid", name="liquid-rocket-fuel", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
    },
    allow_productivity = false
  },
  {
    type = "recipe",
    name = "empty-liquid-nuclear-fuel",
    icon = "__planet-machina__/graphics/icons/molten-glass.png",
    energy_required = .04,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "empty-barrel",
    ingredients =
    {
      {type = "item", name = "nuclear-fuel", amount = 1},
    },
    results = {{type="fluid", name="liquid-nuclear-fuel", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
    },
    allow_productivity = false
  },
  {
    type = "recipe",
    name = "empty-liquid-dark-matter-fuel",
    icon = "__planet-machina__/graphics/icons/molten-glass.png",
    energy_required = .04,
    enabled = false,
    category = "crafting-with-fluid",
    subgroup = "empty-barrel",
    ingredients =
    {
      {type = "item", name = "dark-matter-fuel", amount = 1}
    },
    results = {{type="fluid", name="liquid-dark-matter-fuel", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
    },
    allow_productivity = false
  },
    --//// canister Recipes
    {
      type = "recipe",
      name = "canister-liquid-rocket-fuel",
      icon = "__planet-machina__/graphics/icons/molten-glass.png",
      energy_required = .04,
      enabled = false,
      category = "crafting-with-fluid",
      subgroup = "fill-barrel",
      ingredients =
      {
        {type = "fluid", name = "liquid-rocket-fuel", amount = 10},
      },
      results = {{type="item", name="rocket-fuel", amount=1}},
      crafting_machine_tint =
      {
        primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
        secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      },
      allow_productivity = false
    },
    {
      type = "recipe",
      name = "canister-liquid-nuclear-fuel",
      icon = "__planet-machina__/graphics/icons/molten-glass.png",
      energy_required = .04,
      enabled = false,
      category = "crafting-with-fluid",
      subgroup = "fill-barrel",
      ingredients =
      {
        {type = "fluid", name = "liquid-nuclear-fuel", amount = 10},
      },
      results = {{type="item", name="nuclear-fuel", amount=1}},
      crafting_machine_tint =
      {
        primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
        secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      },
      allow_productivity = false
    },
    {
      type = "recipe",
      name = "canister-liquid-dark-matter-fuel",
      icon = "__planet-machina__/graphics/icons/molten-glass.png",
      energy_required = .04,
      enabled = false,
      category = "crafting-with-fluid",
      subgroup = "fill-barrel",
      ingredients =
      {
        {type = "fluid", name = "liquid-dark-matter-fuel", amount = 10}
      },
      results = {{type="item", name="dark-matter-fuel", amount=1}},
      crafting_machine_tint =
      {
        primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
        secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
      },
      allow_productivity = false
    },
})