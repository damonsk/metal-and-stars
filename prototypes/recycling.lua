data:extend({
    {
        type = "recipe",
        name = "aspheric-lens-recycling",
        category = "recycling",
        icons = {
            {
              icon = "__quality__/graphics/icons/recycling.png"
            },
            {
              icon = "__planet-machina__/graphics/icons/glass-lens.png",
              scale = 0.4
            },
            {
              icon = "__quality__/graphics/icons/recycling-top.png"
            }
          },
        subgroup = "aquilo-processes",
        order = "c[lithium]-b[lithium-plate]",
        energy_required = 6.4,
        ingredients = {
          {type = "item", name = "aspheric-lens", amount = 1},
        },
        results = {
          {type = "item", name = "glass-billet", amount = 1},
        },
        enabled = false
    },
    {
      type = "recipe",
      name = "glass-plate-recycling",
      category = "recycling",
      icons = {
          {
            icon = "__quality__/graphics/icons/recycling.png"
          },
          {
            icon = "__planet-machina__/graphics/icons/glass-plate-1.png",
            scale = 0.4
          },
          {
            icon = "__quality__/graphics/icons/recycling-top.png"
          }
        },
      subgroup = "aquilo-processes",
      order = "c[lithium]-b[lithium-plate]",
      energy_required = 6.4,
      ingredients = {
        {type = "item", name = "glass-plate", amount = 1},
      },
      results = {
        {type = "item", name = "glass-billet", amount = 1, probability = 0.25},
      },
      enabled = false
    },
    {
      type = "recipe",
      name = "inert-science-pack-recycling",
      category = "recycling",
      icons = {
          {
            icon = "__quality__/graphics/icons/recycling.png"
          },
          {
            icon = "__planet-machina__/graphics/icons/inert-quantum-science.png",
            scale = 0.4
          },
          {
            icon = "__quality__/graphics/icons/recycling-top.png"
          }
        },
      subgroup = "aquilo-processes",
      order = "c[lithium]-b[lithium-plate]",
      energy_required = 6.4,
      ingredients = {
        {type = "item", name = "inert-quantum-science-pack", amount = 1},
      },
      results = {
        {type = "item", name = "quantum-shard-a", amount = 1, probability = 0.1},
        {type = "item", name = "quantum-shard-b", amount = 1, probability = 0.1},
        {type = "item", name = "quantum-shard-c", amount = 1, probability = 0.1},
      },
      enabled = false
    },
    {
      type = "recipe",
      name = "depleted-fuel-cell-recycling",
      category = "recycling",
      icons = {
          {
            icon = "__quality__/graphics/icons/recycling.png"
          },
          {
            icon = "__planet-machina__/graphics/icons/empty-fuel-cell.png",
            scale = 0.4
          },
          {
            icon = "__quality__/graphics/icons/recycling-top.png"
          }
        },
      subgroup = "aquilo-processes",
      order = "c[lithium]-b[lithium-plate]",
      energy_required = 6.4,
      ingredients = {
        {type = "item", name = "depleted-fuel-cell", amount = 1},
      },
      results = {
        {type = "item", name = "stone", amount = 1},
        {type = "item", name = "iron-plate", amount = 1},
      },
      enabled = false
    },
})