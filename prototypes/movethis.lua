local recycledRocketRecipe = {
	type = "recipe",
	name = "recycled-mag-rocket-ship",
	energy_required = 40,
	enabled = true,
	hide_from_player_crafting = false,
	category = "rocket-building",
    ingredients = {
      {type = "item", name = "iron-plate", amount = 1},
	  {type = "item", name = "steel-plate", amount = 20},
    },
	results = {{type="item", name="rocket-part", amount=1}},
	allow_productivity = true
}

-- table.insert(data.raw.technology["rocket-silo"].effects, { type = "unlock-recipe", recipe = recname })

data.raw["rocket-silo"]["rocket-silo"].fixed_recipe = nil

data:extend({
    recycledRocketRecipe,
	{
		type = "recipe",
		name = "recycled-mag-rocket-shipa",
		energy_required = 40,
		enabled = true,
		hide_from_player_crafting = false,
		category = "rocket-building",
		ingredients = {
		  {type = "item", name = "iron-plate", amount = 1},
		  {type = "item", name = "steel-plate", amount = 20},
		},
		results = {{type="item", name="quantum-shard-a", amount=1}},
		allow_productivity = true
	}
})

-- data.raw.recipe["rocket-part"].ingredients = {
--     {type = "item", name = "rocket-fuel", amount = 1},
--     {type = "item", name = "incomplete-rocket-part", amount = 1}
-- }

-- table.insert(data.raw.technology["rocket-silo"].effects, {type="unlock-recipe", recipe = "incomplete-rocket-part"})