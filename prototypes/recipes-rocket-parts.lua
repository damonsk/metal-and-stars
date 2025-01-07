
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
        },
})