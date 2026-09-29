function Temp_FixNulliusNoPipeTouching()
    local tiers = {2, 3, 4}
    local pipe = "nullius-underground-pipe-"
    local category = "nullius-pipe-"
    
    for _, tier in pairs(tiers) do
        local prototype = data.raw["pipe-to-ground"][pipe .. tostring(tier)]
        local connections = prototype.fluid_box.pipe_connections
        for i, c in pairs(connections) do
           c.connection_category = category..tostring(tier)
        end
    end
end

if mods["nullius"] then
    Temp_FixNulliusNoPipeTouching()
end