local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local asset_graphics = require("__planet-machina__.prototypes.entity.gravity-assembler-visuals")
local meld = require("meld")

local item_name = "gravity-assembler"

local building_entity = 
{
  type = "assembling-machine",
  name = item_name,
  icon = asset_graphics.icons.item_icon,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 0.2, result = "assembling-machine-1"},
  max_health = 300,
  corpse = "assembling-machine-1-remnants",
  dying_explosion = "assembling-machine-1-explosion",
  icon_draw_specification = {shift = {0, -0.3}},
  resistances =
  {
    {
      type = "fire",
      percent = 70
    }
  },
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  damaged_trigger_effect = hit_effects.entity(),
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["assembling-machine"],
  alert_icon_shift = util.by_pixel(0, -12),
  crafting_categories = {"crafting", "basic-crafting", "advanced-crafting"},
  crafting_speed = 3,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = 4 }
  },
  energy_usage = "75kW",
  open_sound = sounds.machine_open,
  close_sound = sounds.machine_close,
  allowed_effects = {"speed", "consumption", "pollution"},
  effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
  impact_category = "metal",
  working_sound =
  {
    sound = { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5 },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  }
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