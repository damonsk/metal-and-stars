local PlanetsLibTiers = require("__PlanetsLibTiers__.data")

-- Add new planet tiers
PlanetsLibTiers.modded_tiers.planet["nix"] = 3
PlanetsLibTiers.modded_tiers.planet["ringworld"] = 3
PlanetsLibTiers.modded_tiers.planet["shipyard"] = 2

-- Add new space-location tiers
PlanetsLibTiers.modded_tiers["space-location"]["calidus-senestella-gate-senestella"] = 1.1
PlanetsLibTiers.modded_tiers["space-location"]["calidus-senestella-gate-calidus"] = 1.2
PlanetsLibTiers.modded_tiers["space-location"]["mirandus"] = 4


script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.entity
    if not entity.valid then return end
    
    local prototype = entity.name == "entity-ghost" and entity.ghost_prototype or entity.prototype
    
    if prototype.type ~= "rocket-silo" then return end
    if not prototype.crafting_categories["rocket-building"] then return end

    if entity.surface.name == "maraxsis" then return end
    entity.recipe_locked = false
    
end)