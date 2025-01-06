data:extend({
    {
        type = "technology",
        name = "pyrolysis",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "charcoal"
            },
        },
        prerequisites = {"anomaly-science-pack"},
        unit =
        {
            count = 1000,
            ingredients =
            {
              {"space-science-pack", 1},
              {"nanite-science-pack", 1},
              {"anomaly-science-pack", 1},
            },
            time = 60
        }
    },
    {
      type = "technology",
      name = "advanced-carbon-processes",
      icon = "__space-age__/graphics/technology/calcite-processing.png",
      icon_size = 256,
      effects =
      {
          {
              type = "unlock-recipe",
              recipe = "manufactured-diamond"
          },
      },
      prerequisites = {"anomaly-science-pack"},
      unit =
      {
          count = 1000,
          ingredients =
          {
            {"space-science-pack", 1},
            {"nanite-science-pack", 1},
            {"anomaly-science-pack", 1},
          },
          time = 60
      }
  },
  {
    type = "technology",
    name = "alternative-asteroid-processing",
    icon = "__space-age__/graphics/technology/calcite-processing.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "carbonic-asteroid-refined-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "sloppy-asteroid-smelting"
        },
    },
    prerequisites = {"anomaly-science-pack"},
    unit =
    {
        count = 1000,
        ingredients =
        {
          {"space-science-pack", 1},
          {"nanite-science-pack", 1},
          {"anomaly-science-pack", 1},
        },
        time = 60
    }
 },
 {
    type = "technology",
    name = "gravitic-assembly",
    icon = "__space-age__/graphics/technology/calcite-processing.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "gravity-assembler"
        },
    },
    prerequisites = {"anomaly-science-pack"},
    unit =
    {
        count = 1000,
        ingredients =
        {
          {"space-science-pack", 1},
          {"nanite-science-pack", 1},
          {"anomaly-science-pack", 1},
        },
        time = 60
    }
 },
 {
    type = "technology",
    name = "quantum-ore-conversion-1",
    icon = "__space-age__/graphics/technology/calcite-processing.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "iron-ore-from-stone"
        },
        {
            type = "unlock-recipe",
            recipe = "copper-ore-from-iron-ore"
        },
        {
            type = "unlock-recipe",
            recipe = "stone-from-copper-ore"
        },
    },
    prerequisites = {"quantum-science-pack"},
    unit =
    {
        count = 1000,
        ingredients =
        {
          {"space-science-pack", 1},
          {"nanite-science-pack", 1},
          {"quantum-science-pack", 1},
        },
        time = 60
    }
 },
    
})
