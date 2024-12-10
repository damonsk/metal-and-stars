
return {
    icons = {
        --technology
        technology_icon = "__planet-machina__/graphics/icons/quantum-stabilizer.png",
        technology_icon_size = 256,
        --item
        item_icon = "__planet-machina__/graphics/icons/quantum-stabilizer.png",
        item_icon_size = 64,
    },

    entity_data = {
        collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
        selection_box = {{-3, -3}, {3, 3}},

        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,

        input_fluid_box = {
            base_area = 1,
            base_level = -1,
            height = 2,
            volume = 200,
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler3pipepictures(),  -- TODO does nothing
            pipe_connections =
            {
                { direction = defines.direction.west, position = {-2.88, 0} },
                { direction = defines.direction.east, position = {2.88, 0} },
                { direction = defines.direction.south, position = {0, -2.88} },
                { direction = defines.direction.south, position = {0, 2.88} }
            },
            production_type = "input-output",
        },

        graphics_set = {
            circuit_connector_layer = "object",
                circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },
            animation = {
              layers = {
                {
                  filename = "__planet-machina__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-shadow.png",
                  priority = "high",
                  width = 900,
                  height = 420,
                  frame_count = 1,
                  repeat_count = 100,
                  animation_speed = 0.5,
                  --shift = {2 + 3/32, 1 + 22/32},
                  draw_as_shadow = true,
                  scale = 0.5,
                },
                {
                  priority = "high",
                  width = 410,
                  height = 410,
                  frame_count = 100,
                  animation_speed = 0.5,
                  --shift = {0, -8/32},
                  scale = 0.5,
                  stripes =
                  {
                    {
                      filename = "__planet-machina__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                    {
                      filename = "__planet-machina__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-2.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                  },
                },
                {
                  priority = "high",
                  width = 410,
                  height = 410,
                  frame_count = 100,
                  animation_speed = 0.5,
                  --shift = {0, -8/32},
                  scale = 0.5,
                  draw_as_glow = true,
                  blend_mode = "additive",
                  stripes =
                  {
                    {
                      filename = "__planet-machina__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                    {
                      filename = "__planet-machina__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-2.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                  },
                },
              }
            },
          }
    },
}
