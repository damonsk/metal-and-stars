local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local meld = require("meld")

local item_name = "conduit"

local technology_icon = "__planet-machina__/graphics/icons/conduit.png"
local technology_icon_size = 256
--item
local item_icon = "__planet-machina__/graphics/icons/conduit.png"
local item_icon_size = 64

local building_entity = 
{
  type = "electric-energy-interface",
  name = "conduit",
  icon = item_icon,
  icon_size = item_icon_size,
  flags = {"placeable-neutral", "player-creation"},
  alert_when_damaged = true,
  hidden = true,
  energy_source =
  {
  type = "electric",
  buffer_capacity = "1MJ",
  usage_priority = "primary-output"
  },
  autoplace = {
    order = "a[landscape]-c[rock]-a[huge]",
    probability_expression = "shipyard_conduit_noise"
  },
  energy_production = "150kW",
  energy_usage = "0kW",
  enable_inventory_bar = false,
  minable = {mining_time = 0.1, result = "conduit"},
  max_health = 150,
  corpse = "medium-remnants",
  subgroup = "other",
  damaged_trigger_effect = hit_effects.entity(),
  drawing_box_vertical_extension = 0.5,
  collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  gui_mode = "none",
  continuous_animation = true,
  allow_copy_paste = true,
  open_sound = sounds.machine_open,
  close_sound = sounds.machine_close,
  impact_category = "glass",
  animation = {
    layers = {
      {
        filename = "__planet-machina__/graphics/entity/conduit/conduit-hr-shadow.png",
        priority = "high",
        width = 600,
        height = 400,
        frame_count = 1,
        repeat_count = 60,
        animation_speed = 0.5,
        --shift = {2 + 3/32, 1 + 22/32},
        draw_as_shadow = true,
        scale = 0.5,
      },
      {
        priority = "high",
        width = 200,
        height = 290,
        frame_count = 60,
        animation_speed = 0.5,
        --shift = {0, -8/32},
        scale = 0.5,
        stripes =
        {
          {
            filename = "__planet-machina__/graphics/entity/conduit/conduit-hr-animation.png",
            width_in_frames = 8,
            height_in_frames = 8,
          }
        },
      },
      {
        priority = "high",
        width = 200,
        height = 290,
        frame_count = 60,
        animation_speed = 0.5,
        --shift = {0, -8/32},
        scale = 0.5,
        draw_as_glow = true,
        blend_mode = "additive",
        stripes =
        {
          {
            filename = "__planet-machina__/graphics/entity/conduit/conduit-hr-animation-emission.png",
            width_in_frames = 8,
            height_in_frames = 8,
          }
        },
      },
    }
  },
    
}

data:extend({
  {
    type = "technology",
    name = item_name.."research",
    icon = technology_icon,
    icon_size = technology_icon_size,
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
		icon = technology_icon,
		icon_size = technology_icon_size,
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
  building_entity
})