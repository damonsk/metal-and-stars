autoplace = resource_autoplace.resource_autoplace_settings
{
  name = resource_parameters.name,
  order = resource_parameters.order,
  base_density = autoplace_parameters.base_density,
  base_spots_per_km = autoplace_parameters.base_spots_per_km2,
  has_starting_area_placement = true,
  regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
  starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
  candidate_spot_count = autoplace_parameters.candidate_spot_count,
  tile_restriction = autoplace_parameters.tile_restriction
}


data:extend({
    -- //left resources
    {
        type = "noise-expression",
        name = "ringworld_heavy_geyser",
        expression = "ringworld_left_mask"
    },
    {
        type = "noise-expression",
        name = "ringworld_detritus",
        expression = "ringworld_left_mask"
    },
    -- //right resources
    {
        type = "noise-expression",
        name = "ringworld_coalstone",
        expression = "ringworld_right_mask"
    },
    {
        type = "noise-expression",
        name = "ringworld_gold",
        expression = "ringworld_right_mask"
    },
    {
        type = "noise-expression",
        name = "ringworld_weaponry",
        expression = "ringworld_right_mask"
    },
})

autoplace = resource_autoplace.resource_autoplace_settings
{
  name = resource_parameters.name,
  order = resource_parameters.order,
  base_density = autoplace_parameters.base_density,
  base_spots_per_km = autoplace_parameters.base_spots_per_km2,
  has_starting_area_placement = true,
  regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
  starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
  candidate_spot_count = autoplace_parameters.candidate_spot_count,
  tile_restriction = autoplace_parameters.tile_restriction
}