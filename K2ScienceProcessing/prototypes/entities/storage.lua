function MomoLib.ReduceStorage()
    if not settings.startup["momo-hardcore-storage"].value then return end
    for _, container in pairs(data.raw["container"]) do
        container.inventory_size = math.floor(container.inventory_size / 8)
        container.quality_affects_inventory_size = true
    end
        for _, container in pairs(data.raw["logistic-container"]) do
        container.inventory_size = math.floor(container.inventory_size / 6)
        container.quality_affects_inventory_size = true
    end
end
