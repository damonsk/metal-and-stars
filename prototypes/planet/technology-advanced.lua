data:extend({
    {
        type = "technology",
        name = "overclock-module",
        icon = "__metal-and-stars__/graphics/technology/pollution-module-1.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "overclock-module"
          }
        },
        prerequisites = {"modules"},
        unit =
        {
          count = 50,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
          },
          time = 30
        },
        upgrade = true
      },
      {
        type = "technology",
        name = "overclock-module-2",
        icon = "__metal-and-stars__/graphics/technology/pollution-module-2.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "overclock-module-2"
          }
        },
        prerequisites = {"overclock-module", "processing-unit"},
        unit =
        {
          count = 200,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"space-science-pack", 1}
          },
          time = 30
        },
        upgrade = true
      },
      {
        type = "technology",
        name = "overclock-module-3",
        icon = "__metal-and-stars__/graphics/technology/pollution-module-3.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "overclock-module-3"
          }
        },
        prerequisites = {"overclock-module-2", "anomaly-science-pack"},
        unit =
        {
          count = 300,
          ingredients =
          {
            {"space-science-pack", 1},
            {"nanite-science-pack", 1},
            {"anomaly-science-pack", 1}
          },
          time = 60
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "prototype-mech-armor",
        icon = "__metal-and-stars__/graphics/technology/prototype-mech-armor.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "prototype-mech-armor"
          }
        },
        prerequisites = {"power-armor", "rocket-fuel", "overclock-module-2", "productivity-module-2"},
        unit =
        {
          count = 500,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"military-science-pack", 1},
            {"utility-science-pack", 1}
          },
          time = 30
        }
    },
    {
        type = "technology",
        name = "nanite-rocket-construction",
        icon = "__metal-and-stars__/graphics/technology/nanite-rocket-construction.png",
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
        icon = "__metal-and-stars__/graphics/technology/insulated-rocket-body.png",
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
        icon = "__metal-and-stars__/graphics/technology/superdense-rocket-fuel.png",
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
        icon = "__metal-and-stars__/graphics/technology/pyrolysis.png",
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
    icon = "__metal-and-stars__/graphics/technology/alternative-asteroid-processing.png",
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
    icon = "__metal-and-stars__/graphics/technology/precursor-machines.png",
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
    name = "high-speed-processor",
    icon = "__metal-and-stars__/graphics/technology/high-speed-processor.png",
    icon_size = 256,
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "high-speed-processor"
        },
    },
    prerequisites = {"ring-science-pack", "quantum-science-pack"},
    unit =
    {
        count = 1000,
        ingredients =
        {
          {"space-science-pack", 1},
          {"nanite-science-pack", 1},
          {"ring-science-pack", 1},
          {"quantum-science-pack", 1},
        },
        time = 60
    }
 },
 {
    type = "technology",
    name = "quantum-ore-conversion-1",
    icon = "__metal-and-stars__/graphics/technology/quantum-ore-conversion-1.png",
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
    icon = "__metal-and-stars__/graphics/technology/dark-matter-fuel.png",
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
    icon = "__metal-and-stars__/graphics/technology/dark-matter-fuel-cell.png",
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
