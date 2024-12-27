shipyard = function()
    return
    {
      property_expression_names =
      {
        ["entity:tungsten-ore:probability"] = "vulcanus_tungsten_ore_probability",
        ["entity:tungsten-ore:richness"] = "vulcanus_tungsten_ore_richness",
        ["entity:coal:probability"] = "vulcanus_coal_probability",
        ["entity:coal:richness"] = "vulcanus_coal_richness",
        ["entity:calcite:probability"] = "vulcanus_calcite_probability",
        ["entity:calcite:richness"] = "vulcanus_calcite_richness",
        ["entity:sulfuric-acid-geyser:probability"] = "vulcanus_sulfuric_acid_geyser_probability",
        ["entity:sulfuric-acid-geyser:richness"] = "vulcanus_sulfuric_acid_geyser_richness",
      },
      autoplace_controls =
      {
        ["trees"] = {},
        --["rocks"] = {}, -- can't add the rocks control otherwise nauvis rocks spawn
      },
      autoplace_settings =
      {
        ["tile"] =
        {
          settings =
          {
            ["empty-space-shipyard"] = {},
            ["undergrowth-thin"] = {},
            ["sand-1-ringworld"] = {},
            ["sand-2-ringworld"] = {},
            
            ["ringworld-water"] = {},
          }
        },
        ["decorative"] =
        {
          settings =
          {
            -- nauvis decoratives
            ["v-brown-carpet-grass"] = {},
          }
        },
        ["entity"] =
        {
          settings =
          {
            -- ["coal"] = {},
            -- ["calcite"] = {},
            -- ["sulfuric-acid-geyser"] = {},
            -- ["tungsten-ore"] = {},
            ["big-volcanic-rock"] = {},
          }
        }
      }
    }
  end

return shipyard
