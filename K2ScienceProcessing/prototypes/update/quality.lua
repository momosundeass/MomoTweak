if settings.startup["momo-super-quality"].value then
    for _, q in pairs(data.raw.quality) do
        q.level = q.level * 2
    end
    -- data.raw.quality["uncommon"].next_probability = 0.85
    -- data.raw.quality["rare"].next_probability = 0.65
    -- data.raw.quality["epic"].next_probability = 0.45

    data.raw.quality["normal"].next_probability = 1
    data.raw.quality["uncommon"].next_probability = 0.8
    data.raw.quality["rare"].next_probability = 0.5
    data.raw.quality["epic"].next_probability = 0.1
    data.raw.quality["legendary"].next_probability = 0.01
end

local function ModuleSlot(quality, slot)
    local p = data.raw.quality[quality]
    p.beacon_module_slots_bonus = slot
    p.crafting_machine_module_slots_bonus = slot
    p.mining_drill_module_slots_bonus = slot
    p.lab_module_slots_bonus = slot
end

ModuleSlot("uncommon", 0)
ModuleSlot("rare", 1)
ModuleSlot("epic", 1)
ModuleSlot("legendary", 2)

local item = MomoLib.itemNames
MomoLib.machine.EnableQualityModuleSlot(item.lab2)
MomoLib.machine.EnableQualityModuleSlot(item.lab3)
MomoLib.machine.EnableQualityModuleSlot(item.researchCenter)
MomoLib.machine.EnableQualityModuleSlot(item.manufacturer)
MomoLib.machine.EnableQualityModuleSlot(item.refinery)
MomoLib.machine.EnableQualityModuleSlot(item.greenHouse)
MomoLib.machine.EnableQualityModuleSlot(item.biolab)
MomoLib.machine.EnableQualityModuleSlot(item.advCentrifuge)
MomoLib.machine.EnableQualityModuleSlot(item.recycler)
MomoLib.machine.EnableQualityModuleSlot(item.filtration)
MomoLib.machine.EnableQualityModuleSlot(item.electrolyser)
MomoLib.machine.EnableQualityModuleSlot(item.atmospheric)
MomoLib.machine.EnableQualityModuleSlot(item.fuelRef)
MomoLib.machine.EnableQualityModuleSlot(item.researchServer)
MomoLib.machine.EnableQualityModuleSlot(item.quantumComputer)