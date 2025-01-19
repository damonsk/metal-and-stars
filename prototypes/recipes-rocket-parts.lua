
data.raw["rocket-silo"]["rocket-silo"].fixed_recipe = nil

data:extend({
    {
        type = "recipe",
        name = "nano-rocket-part",
        energy_required = 3,
        enabled = false,
        hide_from_player_crafting = true,
        category = "rocket-building",
        ingredients =
        {
            {type = "item", name = "nanites", amount = 10},
        },
        results = {{type="item", name="rocket-part", amount=1}},
        allow_productivity = true,
        auto_recycle = false,
        surface_conditions =
        {
          {
            property = "pressure",
            min = 0,
            max = 0
          }
        },
    },
    {
        type = "recipe",
        name = "ring-rocket-part",
        energy_required = 3,
        enabled = false,
        hide_from_player_crafting = true,
        category = "rocket-building",
        ingredients =
        {
            {type = "item", name = "nanites", amount = 1},
            {type = "item", name = "processing-unit", amount = 2},
            {type = "item", name = "multilayer-insulation", amount = 1},
            {type = "item", name = "rocket-fuel", amount = 2}
        },
        results = {{type="item", name="rocket-part", amount=2}},
        allow_productivity = true,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = "anomalous-rocket-part",
        energy_required = 3,
        enabled = false,
        hide_from_player_crafting = true,
        category = "rocket-building",
        ingredients =
        {
            {type = "item", name = "nanites", amount = 1},
            {type = "item", name = "processing-unit", amount = 2},
            {type = "item", name = "low-density-structure", amount = 2},
            {type = "item", name = "dark-matter-fuel", amount = 1}
        },
        results = {{type="item", name="rocket-part", amount=2}},
        allow_productivity = true,
        auto_recycle = false,
    },
})