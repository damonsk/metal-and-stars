local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local asset_graphics = require("__planet-machina__.prototypes.entity.conduit-visuals")
local meld = require("meld")

local item_name = "conduit"

local building_entity = 
{
  type = "mining-drill",
  name = item_name,
  crafting_categories = {"crafting"},
  icon = asset_graphics.icons.item_icon,
  icon_size = asset_graphics.icons.item_icon_size,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 3, result = item_name},
  max_health = 1000,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  damaged_trigger_effect = hit_effects.entity(),
  --map_color = ei_data.colors.assembler,
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = -1 },
  },
  allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
  module_specification = {module_slots = 2},
  mining_speed = 1,
  resource_categories = {"basic-solid"},
  energy_usage = "3W",
  resource_searching_radius = 7,
  vector_to_place_result = {0, -5.85},
  circuit_wire_max_distance = default_circuit_wire_max_distance,

  working_sound =
  {
      sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},
      apparent_volume = 0.1,
  },
  vehicle_impact_sound = sounds.generic_impact,
  open_sound = sounds.machine_open,
  close_sound = sounds.machine_close,
}

data:extend({
  {
    type = "technology",
    name = item_name.."research",
    icon = asset_graphics.icons.technology_icon,
    icon_size = asset_graphics.icons.technology_icon_size,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = item_name
      }
    },
    prerequisites = {"rocket-silo"},
    research_trigger = {type = "create-space-platform"}
  },
  {
		type = "item",
		name = item_name,
		icon = asset_graphics.icons.item_icon,
		icon_size = asset_graphics.icons.item_icon_size,
		subgroup = "extraction-machine",
		order = "d[hurricane]",
		place_result = item_name,
		stack_size = 10,
	},
  {
		type = "recipe",
		name = item_name,
		enabled = false,
    energy_required = 10,
		ingredients = {
      {type = "item", name = "jellynut", amount = 1},
		},
		results = {{type="item", name=item_name, amount=1}}
	},
  meld.meld(building_entity, asset_graphics.entity_data)
})