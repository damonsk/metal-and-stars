
table.insert(data.raw["technology"]["rocket-fuel"].effects,   {type = "unlock-recipe", recipe = "liquid-rocket-fuel"})
table.insert(data.raw["technology"]["rocket-fuel"].effects,   {type = "unlock-recipe", recipe = "canister-liquid-rocket-fuel"})
table.insert(data.raw["technology"]["rocket-fuel"].effects,   {type = "unlock-recipe", recipe = "empty-liquid-rocket-fuel"})

table.insert(data.raw["technology"]["kovarex-enrichment-process"].effects,   {type = "unlock-recipe", recipe = "liquid-nuclear-fuel"})
table.insert(data.raw["technology"]["kovarex-enrichment-process"].effects,   {type = "unlock-recipe", recipe = "canister-liquid-nuclear-fuel"})
table.insert(data.raw["technology"]["kovarex-enrichment-process"].effects,   {type = "unlock-recipe", recipe = "empty-liquid-nuclear-fuel"})

data.raw["fluid"]["crude-oil"].fuel_value = "1MJ"