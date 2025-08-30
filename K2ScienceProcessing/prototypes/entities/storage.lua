function MomoLib.ReduceStorage()
    if not settings.startup["hardcore-storage"].value then return end
    local types = { "container", "logistic-container" }
    for _, type in pairs(types) do
        for _, container in pairs(data.raw[type]) do
            container.inventory_size = math.floor(container.inventory_size / 8)
            container.quality_affects_inventory_size = true
        end
    end
end
