function MomoLib.ReduceStorage()
    if not settings.startup["momo-hardcore-storage"].value then return end

    local AddFloor = function(container)
        local h = MomoLib.entity.Height(container)
        local mult = 1 * math.ceil(h / 2)
        container.inventory_size = container.inventory_size * mult
    end

    for _, container in pairs(data.raw["container"]) do
        container.inventory_size = math.floor(container.inventory_size / 8)
        container.quality_affects_inventory_size = true
        AddFloor(container)
    end
        for _, container in pairs(data.raw["logistic-container"]) do
        container.inventory_size = math.floor(container.inventory_size / 6)
        container.quality_affects_inventory_size = true
        AddFloor(container)
    end
end
