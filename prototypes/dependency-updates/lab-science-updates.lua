local function addSciencePack(mod_name, science_pack)
    if mods[mod_name] then
        if data.raw["tool"][science_pack] ~= nil then
            local inputs = data.raw["lab"]["microgravity-lab"].inputs
            if data.raw["lab"]["microgravity-lab"].inputs[science_pack] ~= nil then
                table.insert(inputs, science_pack)
            end
        end
    end
end

if data.raw["lab"]["microgravity-lab"] then
    addSciencePack("atan-nuclear-science", "nuclear-science-pack")
    addSciencePack("maraxsis", "hydraulic-science-pack")
    addSciencePack("tenebris", "bioluminescent-science-pack")
    --addSciencePack("Cerys-Moon-of-Fulgora", "cerys-science-pack")
end