data:extend({
    {
        type = "recipe",
        name = "aspheric-lens",
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
        enabled = true
    },
})