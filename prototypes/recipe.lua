data:extend({
  {
    type = "recipe",
    name = "neodymium-plate",
    category = "smelting",
    subgroup = "aquilo-processes",
    order = "c[lithium]-b[lithium-plate]",
    auto_recycle = false,
    energy_required = 6.4,
    ingredients = {
      {type = "item", name = "neodymium-ore", amount = 2},
    },
    results = {{type="item", name="neodymium-plate", amount=1}},
    allow_productivity = true,
    enabled = true
  },
  {
    type = "recipe",
    name = "neodymium-alloy-plate",
    category = "metallurgy",
    subgroup = "aquilo-processes",
    order = "c[lithium]-b[lithium-plate]",
    auto_recycle = false,
    energy_required = 6.4,
    ingredients = {
      {type = "item", name = "neodymium-ore", amount = 1},
      {type = "fluid", name = "molten-iron", amount = 20}
    },
    results = {{type="item", name="neodymium-plate", amount=1}},
    allow_productivity = true,
    enabled = true
  },
  {
    type = "recipe",
    name = "quantum-shard-a",
    category = "quantum",
    subgroup = "aquilo-processes",
    order = "c[lithium]-b[lithium-plate]",
    auto_recycle = false,
    energy_required = 6.4,
    ingredients = {
      {type = "item", name = "quantite-a", amount = 1},
      {type = "item", name = "holmium-plate", amount = 1}
    },
    results = {{type="item", name="quantum-shard-a", amount=1}},
    allow_productivity = true,
    enabled = true
  },
  {
    type = "recipe",
    name = "quantum-shard-b",
    category = "quantum",
    subgroup = "aquilo-processes",
    order = "c[lithium]-b[lithium-plate]",
    auto_recycle = false,
    energy_required = 6.4,
    ingredients = {
      {type = "item", name = "quantite-b", amount = 1},
      {type = "item", name = "neodymium-plate", amount = 1}
    },
    results = {{type="item", name="quantum-shard-b", amount=1}},
    allow_productivity = true,
    enabled = true
  },
  {
    type = "recipe",
    name = "quantum-shard-c",
    category = "quantum",
    subgroup = "aquilo-processes",
    order = "c[lithium]-b[lithium-plate]",
    auto_recycle = false,
    energy_required = 6.4,
    ingredients = {
      {type = "item", name = "quantite-c", amount = 1},
      {type = "item", name = "lithium-plate", amount = 1}
    },
    results = {{type="item", name="quantum-shard-c", amount=1}},
    allow_productivity = true,
    enabled = true
  },
  {
    type = "recipe",
    name = "volatile-quantum-science-pack",
    enabled = true,
    category = "quantum",
    energy_required = 5,
    ingredients =
    {
      {type = "item", name = "quantum-shard-a", amount = 1},
      {type = "item", name = "quantum-shard-b", amount = 1},
      {type = "item", name = "quantum-shard-c", amount = 1}
    },
    results = {{type="item", name="volatile-quantum-science-pack", amount=1}},
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.0, b = 0.0, a = 1.000},
      secondary = {r = 1.000, g = 0.0, b = 0.0, a = 1.000},
    },
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "quantum-science-pack",
    enabled = true,
    category = "quantum",
    energy_required = 5,
    ingredients =
    {
      {type = "item", name = "unstable-quantum-science-pack", amount = 1},
      {type = "item", name = "inert-quantum-science-pack", amount = 1}
    },
    results = {{type="item", name="quantum-science-pack", amount=2}},
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.0, b = 0.0, a = 1.000},
      secondary = {r = 1.000, g = 0.0, b = 0.0, a = 1.000},
    },
    allow_productivity = true
  },

  {
    type = "recipe",
    name = "thorium-enrichment-process",
    energy_required = 60,
    enabled = true,
    category = "centrifuging",
    icon = "__planet-machina__/graphics/icons/thorium-enrichment-process.png",
    subgroup = "uranium-processing",
    order = "b[uranium-products]-c[thorium-enrichment-process]",
    ingredients =
    {
      {type = "item", name = "thorium", amount = 5},
      {type = "item", name = "quantite-a", amount = 20, ignored_by_stats = 20}
    },
    results =
    {
      {type = "item", name = "quantite-b", amount = 20, ignored_by_stats = 20, ignored_by_productivity = 20},
      {type = "item", name = "uranium-233", amount = 5}
    },
    main_product = "uranium-233",
    allow_decomposition = false,
    allow_productivity = true,
    allow_quality = false -- catalyst would be also bumped on quality
  },

  {
    type = "recipe",
    name = "mirandite-sludge",
    energy_required = 3,
    enabled = true,
    category = "chemistry",
    icon = "__planet-machina__/graphics/icons/mirandite-sludge.png",
    subgroup = "uranium-processing",
    order = "b[uranium-products]-c[thorium-enrichment-process]",
    ingredients =
    {
      {type = "item", name = "mirandite", amount = 120},
      {type = "fluid", name = "water", amount = 90, ignored_by_stats = 90}
    },
    results =
    {
      {type = "fluid", name = "mirandite-sludge", amount = 100}
    },
    main_product = "mirandite-sludge",
    allow_decomposition = false,
    allow_productivity = true,
  },


  {
    type = "recipe",
    name = "mirandite-processing",
    energy_required = 2,
    enabled = true,
    category = "crafting-with-fluid-or-metallurgy",
    ingredients = {{type = "fluid", name = "mirandite-sludge", amount = 100}},
    
    icon = "__planet-machina__/graphics/icons/mirandite.png",
    subgroup = "uranium-processing",
    order = "a[uranium-processing]-a[uranium-processing]",
    auto_recycle = false,
    results =
    {
      {type = "fluid", name = "water", amount = 30, ignored_by_stats = 30, ignored_by_productivity = 30},
      {
        type = "item",
        name = "quantite-a",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "quantite-b",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "quantite-c",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "thorium",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "holmium-ore",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "neodymium-ore",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "lithium",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "iron-ore",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "copper-ore",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "stone",
        probability = 0.1,
        amount = 1
      },
      {
        type = "item",
        name = "calcite",
        probability = 0.1,
        amount = 1
      },
    },
    allow_productivity = true,
    allow_decomposition = false,
  },
})