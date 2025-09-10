

function MomoLib.NewSolidItem(name, icon, stackSize)
    local prototype = MomoLib.item.Create(name, icon, stackSize)
    local item = MomoLib.itemName:New(prototype)
    return item, prototype
end

function MomoLib.NewIntermediate(name, icon, stackSize)
    local item, prototype = MomoLib.NewSolidItem(name, icon, stackSize)
    prototype.subgroup = "intermediate-product"
    prototype.auto_recycle = false
    return item, prototype
end  
function MomoLib.NewRawResource(name, icon, stackSize)
    local item, prototype = MomoLib.NewSolidItem(name, icon, stackSize)
    prototype.subgroup = "raw-resource"
    prototype.auto_recycle = true
    return item, prototype
end  

---@param subgroup string
---@param recycleable? boolean
function MomoLib.NewScience(name, icon, stackSize, subgroup, recycleable)
    local item, prototype = MomoLib.NewSolidItem(name, icon, stackSize)
    prototype.subgroup = subgroup
    prototype.auto_recycle = recycleable or false
    return item, prototype
end  

---@param isSuperHot? boolean
function MomoLib.NewFluid(name, icon, color, isSuperHot)
    local prototype = MomoLib.item.Create(name, icon, 100, "fluid", color)
    if isSuperHot then prototype:SUPERHOT() end
    local item = MomoLib.itemName:New(prototype)
    prototype.subgroup = "fluid-recipes"
    prototype.auto_recycle = false
    return item
end  