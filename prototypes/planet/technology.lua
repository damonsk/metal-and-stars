data:extend({
    {
        type = "technology",
        name = "planet-discovery-shipyard",
        icons = util.technology_icon_constant_planet("__planet-machina__/graphics/icons/technology/ostendus-tech.png"),
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
        prerequisites = { "automation-science-pack" },
        unit =
        {
            count = 3,
            ingredients =
            {
                { "automation-science-pack",      1 }
            },
            time = 10
        }
    }
})
