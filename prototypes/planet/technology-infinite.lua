data:extend({
  {
    type = "technology",
    name = "space-fuel-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__metal-and-stars__/graphics/technology/space-fuel-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
    },
    prerequisites = {"quantum-science-pack"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"space-science-pack", 1},
        {"nanite-science-pack", 1},
        {"quantum-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "dark-matter-refinement-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/plastics-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
    },
    prerequisites = {"anomaly-science-pack"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"space-science-pack", 1},
        {"nanite-science-pack", 1},
        {"anomaly-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "gold-refinement-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/plastics-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
    },
    prerequisites = {"ring-science-pack"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"space-science-pack", 1},
        {"nanite-science-pack", 1},
        {"ring-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "bullet-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__metal-and-stars__/graphics/technology/bullet-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
    },
    prerequisites = {"ring-science-pack", "military-2"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"space-science-pack", 1},
        {"nanite-science-pack", 1},
        {"ring-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "rocket-ammo-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__metal-and-stars__/graphics/technology/rocket-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
    },
    prerequisites = {"quantum-science-pack", "rocketry"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"space-science-pack", 1},
        {"nanite-science-pack", 1},
        {"quantum-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "railgun-ammo-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__metal-and-stars__/graphics/technology/railgun-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
    },
    prerequisites = {"railgun"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"space-science-pack", 1},
        {"nanite-science-pack", 1},
        {"cryogenic-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
    
})
