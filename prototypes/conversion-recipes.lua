data:extend({
    {
        type = "item-subgroup",
        name = "conversion",
        group = "intermediate-products",
        order = "i"
    },
    {
      type = "recipe",
      name = "quantite-to-ironore",
      category = "quantum",
      subgroup = "conversion",
      order = "c[lithium]-b[lithium-plate]",
      auto_recycle = false,
      energy_required = 1,
      ingredients = {
        {type = "item", name = "quantite-a", amount = 4},
      },
      results = {{type="item", name="iron-ore", amount=1}},
      allow_productivity = true,
      enabled = true
    },
    {
        type = "recipe",
        name = "quantite-to-copperore",
        category = "quantum",
        subgroup = "conversion",
        order = "c[lithium]-b[lithium-plate]",
        auto_recycle = false,
        energy_required = 1,
        ingredients = {
          {type = "item", name = "quantite-b", amount = 4},
        },
        results = {{type="item", name="copper-ore", amount=1}},
        allow_productivity = true,
        enabled = true
    },
    {
        type = "recipe",
        name = "quantite-to-stone",
        category = "quantum",
        subgroup = "conversion",
        order = "c[lithium]-b[lithium-plate]",
        auto_recycle = false,
        energy_required = 1,
        ingredients = {
          {type = "item", name = "quantite-c", amount = 4},
        },
        results = {{type="item", name="stone", amount=1}},
        allow_productivity = true,
        enabled = true
    },
    {
      type = "recipe",
      name = "ironore-to-stone",
      category = "quantum",
      subgroup = "conversion",
      order = "c[lithium]-b[lithium-plate]",
      auto_recycle = false,
      energy_required = 1,
      ingredients = {
        {type = "item", name = "iron-ore", amount = 4},
      },
      results = {{type="item", name="stone", amount=1}},
      allow_productivity = true,
      enabled = true
    },
    {
        type = "recipe",
        name = "copperore-to-stone",
        category = "quantum",
        subgroup = "conversion",
        order = "c[lithium]-b[lithium-plate]",
        auto_recycle = false,
        energy_required = 1,
        ingredients = {
          {type = "item", name = "copper-ore", amount = 4},
        },
        results = {{type="item", name="stone", amount=1}},
        allow_productivity = true,
        enabled = true
      },
      {
        type = "recipe",
        name = "stone-to-ironore",
        category = "quantum",
        subgroup = "conversion",
        order = "c[lithium]-b[lithium-plate]",
        auto_recycle = false,
        energy_required = 1,
        ingredients = {
          {type = "item", name = "stone", amount = 4},
        },
        results = {{type="item", name="iron-ore", amount=1}},
        allow_productivity = true,
        enabled = true
      },
      {
        type = "recipe",
        name = "stone-to-copperore",
        category = "quantum",
        subgroup = "conversion",
        order = "c[lithium]-b[lithium-plate]",
        auto_recycle = false,
        energy_required = 1,
        ingredients = {
          {type = "item", name = "stone", amount = 4},
        },
        results = {{type="item", name="iron-ore", amount=1}},
        allow_productivity = true,
        enabled = true
      },
})