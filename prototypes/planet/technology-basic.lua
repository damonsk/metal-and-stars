data:extend({
    {
        type = "technology",
        name = "planet-discovery-shipyard",
        icons = util.technology_icon_constant_planet("__planet-machina__/graphics/icons/technology/shipyard-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "shipyard",
                use_icon_overlay_constant = true
            },
        },
        prerequisites = { "space-platform-thruster" },
        unit =
        {
            count = 1000,
            ingredients =
            {
              {"automation-science-pack", 1},
              {"logistic-science-pack", 1},
              {"chemical-science-pack", 1},
              {"space-science-pack", 1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "basic-low-gravity-assembly",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nanograbber"
            },
        },
        prerequisites = {"planet-discovery-shipyard"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "gravity-assembler"
        }
    },
    {
        type = "technology",
        name = "platform-power-pylons",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nanocrusher"
            },
        },
        prerequisites = {"planet-discovery-shipyard"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "conduit"
        }
    },
    {
        type = "technology",
        name = "nanite-extraction",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "nanites"
          },
        },
        prerequisites = {"planet-discovery-shipyard"},
        research_trigger =
        {
          type = "craft-fluid",
          fluid = "gray-goo"
        }
    },
    {
        type = "technology",
        name = "nanite-platform-assembly",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nanothruster"
            },
            {
                type = "unlock-recipe",
                recipe = "nanite-platform-foundation"
            },
            {
                type = "unlock-recipe",
                recipe = "nanite-platform-starter-pack"
            },
        },
        prerequisites = {"nanite-extraction"},
        research_trigger =
        {
          type = "craft-item",
          item = "nanites"
        }
    },
    {
        type = "technology",
        name = "nanite-science-pack",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "nanite-science-pack"
          },
        },
        prerequisites = {"nanite-platform-assembly"},
        research_trigger =
        {
            type = "craft-item",
            item = "nanites",
            count = 1000
        }
    },
    --////////////////////////////////////////////// nix
    {
        type = "technology",
        name = "planet-discovery-nix",
        icons = util.technology_icon_constant_planet("__planet-machina__/graphics/icons/technology/nix-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "nix",
                use_icon_overlay_constant = true
            },
        },
        prerequisites = { "nanite-science-pack" },
        unit =
        {
            count = 1000,
            ingredients =
            {
              {"space-science-pack", 1},
              {"nanite-science-pack", 1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "dark-matter-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "dark-matter-compression"
          },
        },
        prerequisites = {"planet-discovery-nix"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "dark-matter-vent"
        }
    },
    {
        type = "technology",
        name = "crude-slush-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "crude-slush-processing"
          },
          {
            type = "unlock-recipe",
            recipe = "ice-compression"
          },
          {
            type = "unlock-recipe",
            recipe = "liquid-fuel-heating-tower"
          },
        },
        prerequisites = {"planet-discovery-nix"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "crude-slush"
        }
    },
    {
        type = "technology",
        name = "antimatter-catalyst",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "catalyzed-anomaly-science-pack"
          },
        },
        prerequisites = {"dark-matter-processing"},
        research_trigger =
        {
          type = "craft-item",
          item = "antimatter"
        }
    },
    {
        type = "technology",
        name = "anomaly-science-pack",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "anomaly-science-pack"
          },
        },
        prerequisites = {"crude-slush-processing"},
        research_trigger =
        {
          type = "craft-item",
          item = "ice-xv"
        }
    },
    --//////////////////////////// ringworld
    {
        type = "technology",
        name = "planet-discovery-ringworld",
        icons = util.technology_icon_constant_planet("__planet-machina__/graphics/icons/technology/ringworld-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "ringworld",
                use_icon_overlay_constant = true
            },
        },
        prerequisites = { "nanite-science-pack" },
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"space-science-pack", 1},
                {"nanite-science-pack", 1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "bitumen-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "process-bitumen"
          },
          {
            type = "unlock-recipe",
            recipe = "bone-to-calcite"
          },
        },
        prerequisites = {"planet-discovery-ringworld"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "ringworld-detritus"
        }
    },
    {
        type = "technology",
        name = "heavy-water-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "heavy-water-processing"
          },
        },
        prerequisites = {"planet-discovery-ringworld"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "heavy-water-vent"
        }
    },
    {
        type = "technology",
        name = "basic-glass-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "glass-plate"
          },
        },
        prerequisites = {"planet-discovery-ringworld"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "gold-sands"
        }
    },
    {
        type = "technology",
        name = "lenscrafting",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "aspheric-lens"
          },
        },
        prerequisites = {"basic-glass-processing"},
        research_trigger =
        {
          type = "craft-item",
          item = "glass-plate"
        }
    },
    {
        type = "technology",
        name = "glass-recycling",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "glass-billet-reuse"
          },
          {
            type = "unlock-recipe",
            recipe = "molten-glass"
          },
          {
            type = "unlock-recipe",
            recipe = "casting-glass-plate"
          },
        },
        prerequisites = {"basic-glass-processing"},
        unit =
        {
            count = 500,
            ingredients =
            {
                {"space-science-pack", 1},
                {"nanite-science-pack", 1},
                {"ring-science-pack", 1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "gold-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "gold-plate"
          },
          {
            type = "unlock-recipe",
            recipe = "molten-gold"
          },
          {
            type = "unlock-recipe",
            recipe = "casting-gold-plate"
          },
        },
        prerequisites = {"planet-discovery-ringworld"},
        research_trigger =
        {
          type = "mine-entity",
          entity = "gold-sands"
        }
    },
    {
        type = "technology",
        name = "advanced-insulative-material",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "gold-foil"
          },
          {
            type = "unlock-recipe",
            recipe = "multilayer-insulation"
          },
        },
        prerequisites = {"gold-processing"},
        research_trigger =
        {
            type = "craft-item",
            item = "gold-plate"
        }
    },
    {
        type = "technology",
        name = "ring-science-pack",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "ring-science-pack"
          },
        },
        prerequisites = {"advanced-insulative-material", "lenscrafting", "heavy-water-processing"},
        research_trigger =
        {
            type = "craft-item",
            item = "multilayer-insulation"
        }
    },
    {
        type = "technology",
        name = "gold-wired-electronics",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "gold-cable"
          },
          {
            type = "unlock-recipe",
            recipe = "casting-gold-cable"
          },
          {
            type = "unlock-recipe",
            recipe = "casting-glass-plate"
          },
          {
            type = "unlock-recipe",
            recipe = "glass-plate-recycling"
          },
          {
            type = "unlock-recipe",
            recipe = "aspheric-lens-recycling"
          },
        },
        prerequisites = {"basic-glass-processing"},
        unit =
        {
            count = 500,
            ingredients =
            {
                {"space-science-pack", 1},
                {"nanite-science-pack", 1},
                {"ring-science-pack", 1}
            },
            time = 60
        }
    },
    --//////////////////////////// mirandus
    {
        type = "technology",
        name = "planet-discovery-mirandus",
        icons = util.technology_icon_constant_planet("__planet-machina__/graphics/icons/technology/mirandus-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "mirandus-a",
                use_icon_overlay_constant = true
            },
            {
                type = "unlock-recipe",
                recipe = "mirandite-sludge"
            },
        },
        prerequisites = { "nanite-science-pack" },
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"space-science-pack", 1},
                {"nanite-science-pack", 1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "mirandite-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "mirandite-processing"
          },
        },
        prerequisites = {"planet-discovery-mirandus"},
        research_trigger =
        {
          type = "craft-fluid",
          fluid = "mirandite-sludge"
        }
    },
    {
        type = "technology",
        name = "neodymium-processing",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "neodymium-plate"
          },
        },
        prerequisites = {"mirandite-processing"},
        research_trigger =
        {
          type = "craft-item",
          item = "neodymium-ore"
        }
    },
    {
        type = "technology",
        name = "quantum-refinement",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "quantum-shard-a"
          },
          {
            type = "unlock-recipe",
            recipe = "quantum-shard-b"
          },
          {
            type = "unlock-recipe",
            recipe = "quantum-shard-c"
          },
        },
        prerequisites = {"mirandite-processing"},
        research_trigger =
        {
          type = "craft-item",
          item = "quantite-a"
        }
    },
    {
        type = "technology",
        name = "quantum-science-pack",
        icon = "__space-age__/graphics/technology/calcite-processing.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "volatile-quantum-science-pack"
          },
          {
            type = "unlock-recipe",
            recipe = "quantum-science-pack"
          },
          {
            type = "unlock-recipe",
            recipe = "inert-science-pack-salvage"
          },
        },
        prerequisites = {"quantum-refinement"},
        research_trigger =
        {
          type = "craft-item",
          item = "quantum-shard-b"
        }
    },
    
})
