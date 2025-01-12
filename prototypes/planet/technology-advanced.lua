data:extend({
    {
        type = "technology",
        name = "nanite-rocket-construction",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nano-rocket-part"
            },
        },
        prerequisites = {"nanite-science-pack"},
        unit =
        {
            count = 1000,
            ingredients =
            {
              {"space-science-pack", 1},
              {"nanite-science-pack", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "insulated-rocket-body",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ring-rocket-part"
            },
        },
        prerequisites = {"nanite-rocket-construction", "ring-science-pack"},
        unit =
        {
            count = 1000,
            ingredients =
            {
              {"space-science-pack", 1},
              {"nanite-science-pack", 1},
              {"ring-science-pack", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "superdense-rocket-fuel",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "anomalous-rocket-part"
            },
        },
        prerequisites = {"nanite-rocket-construction","dark-matter-fuel"},
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
    name = "precursor-machines",
    icon = "__space-age__/graphics/technology/calcite-processing.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "gravity-assembler"
        },
        {
            type = "unlock-recipe",
            recipe = "conduit"
        },
    },
    prerequisites = {"anomaly-science-pack", "ring-science-pack", "quantum-science-pack"},
    unit =
    {
        count = 1000,
        ingredients =
        {
          {"space-science-pack", 1},
          {"nanite-science-pack", 1},
          {"anomaly-science-pack", 1},
          {"ring-science-pack", 1},
          {"quantum-science-pack", 1},
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
 {
    type = "technology",
    name = "dark-matter-fuel",
    icon = "__space-age__/graphics/technology/calcite-processing.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "dark-matter-fuel"
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
    name = "dark-matter-reactor-fuel",
    icon = "__space-age__/graphics/technology/calcite-processing.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "dark-matter-fuel-cell"
        },
    },
    prerequisites = {"dark-matter-fuel"},
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
    
})
