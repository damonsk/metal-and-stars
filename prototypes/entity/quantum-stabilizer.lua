local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local asset_graphics = require("__planet-machina__.prototypes.entity.quantum-stabilizer-visuals")
local meld = require("meld")

local item_name = "quantum-stabilizer"

local building_entity = 
{
  type = "assembling-machine",
  name = item_name,
  crafting_categories = {"quantum"},
  icon = asset_graphics.icons.item_icon,
  icon_size = asset_graphics.icons.item_icon_size,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 2.5, result = item_name},
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  damaged_trigger_effect = hit_effects.entity(),
  --map_color = ei_data.colors.assembler,
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = 1 },
  },
  effect_receiver = { base_effect = { productivity = 0.5 }},
  module_slots = 4,
  icon_draw_specification = {scale = 2, shift = {0, -0.3}},
  icons_positioning =
  {
    {inventory_index = defines.inventory.assembling_machine_modules, shift = {0, 1.25}}
  },
  allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
  module_specification = {module_slots = 2},
  crafting_speed = 4,
  resource_categories = {"basic-solid"},
  energy_usage = "1W",
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

-- local d = {
--   type = "assembling-machine",
--   name = "foundry",
--   icon = "__space-age__/graphics/icons/foundry.png",
--   flags = {"placeable-neutral","player-creation"},
--   minable = {mining_time = 0.2, result = "foundry"},
--   fast_replaceable_group = "foundry",
--   max_health = 350,
--   corpse = "foundry-remnants",
--   dying_explosion = "foundry-explosion",
--   circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
--   circuit_connector = circuit_connector_definitions["foundry"],
--   collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
--   selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
--   heating_energy = "300kW",
--   damaged_trigger_effect = hit_effects.entity(),
--   drawing_box_vertical_extension = 1.3,
--   effect_receiver = { base_effect = { productivity = 0.5 }},
--   module_slots = 4,
--   icon_draw_specification = {scale = 2, shift = {0, -0.3}},
--   icons_positioning =
--   {
--     {inventory_index = defines.inventory.assembling_machine_modules, shift = {0, 1.25}}
--   },
--   allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
--   crafting_categories = {"metallurgy", "pressing", "crafting-with-fluid-or-metallurgy", "metallurgy-or-assembling"},
--   crafting_speed = 4,
--   energy_source =
--   {
--     type = "electric",
--     usage_priority = "secondary-input",
--     emissions_per_minute = { pollution = 6 }
--   },
--   energy_usage = "2500kW",
--   perceived_performance = { minimum = 0.25, performance_to_activity_rate = 2.0, maximum = 20 },
--   graphics_set = require("__space-age__.prototypes.entity.foundry-pictures").graphics_set,
--   open_sound = sounds.metal_large_open,
--   close_sound = sounds.metal_large_close,
-- }

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