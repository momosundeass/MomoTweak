local item = MomoLib.itemNames

local function NewScience(name, icon, stackSize)
    local item = MomoLib.itemName:New(MomoLib.item.Create(name, icon, stackSize))
    item.subgroup = "science-pack"
    item.auto_recycle = false
    return item
end  
local function NewFluid(name, icon, color, isSuperHot)
    local prototype = MomoLib.item.Create(name, icon, 100, "fluid", color)
    if isSuperHot then prototype:SUPERHOT() end
    local item = MomoLib.itemName:New(prototype)
    item.subgroup = "science-pack"
    item.auto_recycle = false
    return item
end  

MomoLib.itemNames.redSci1 = NewScience("red-sci-1", MomoLib.icon.FromIngredientWithSize(item.redSci), 20)

MomoLib.itemNames.greenSci1 = NewScience("green-sci-1", MomoLib.icon.FromIngredientWithSize(item.greenSci), 20)
MomoLib.itemNames.greenSci2 = NewScience("green-sci-2", MomoLib.AltCard("logistic-science-pack"), 100)

MomoLib.itemNames.memoryBlock = NewScience("memory-block-a", {MomoLib.icon.Get("memory-block.png"), 32}, 100)

MomoLib.itemNames.blackSci1 = NewScience("black-sci-1", MomoLib.icon.FromIngredientWithSize(item.blackSci), 20)

MomoLib.itemNames.blueSci1 = NewScience("blue-sci-1", MomoLib.icon.FromIngredientWithSize(item.blueSci), 20)
MomoLib.itemNames.blueSci2 = NewScience("blue-sci-2", MomoLib.AltCard("chemical-science-pack"), 20)

MomoLib.itemNames.ionMatter  = NewFluid("ion-matter", MomoLib.Graphics("space-age/thruster-oxidizer.png"), {r = 84/255, g = 233/255, b=248/255, a=1}, true)
MomoLib.itemNames.inconShape = NewScience("incontinue-shape", {MomoLib.icon.Get("incontinue-shape.png"), 32}, 100)

MomoLib.itemNames.purpleSci1 = NewScience("purple-sci-1", MomoLib.icon.FromIngredientWithSize(item.purpleSci), 20)
MomoLib.itemNames.purpleSci2 = NewScience("purple-sci-2", MomoLib.AltCard("production-science-pack"), 100)
MomoLib.itemNames.purpleSci3 = NewScience("purple-sci-3", {MomoLib.icon.Get("purple-sci-3.png"), 32}, 100)

MomoLib.itemNames.scienceHardware = NewScience("science-hardware", MomoLib.icon.Get("science-hardware.png"), 50)
MomoLib.itemNames.lattice = NewScience("lattice", MomoLib.icon.Get("lattice.png", 32), 50)

MomoLib.itemNames.yellowSci1 = NewScience("yellow-sci-1", MomoLib.icon.FromIngredientWithSize(item.yellowSci), 20)
MomoLib.itemNames.yellowSci2 = NewScience("yellow-sci-2", MomoLib.AltCard("utility-science-pack"), 500)
MomoLib.itemNames.yellowSci3 = NewScience("yellow-sci-3", MomoLib.icon.Get("yellow-sci-3.png", 32), 50)
MomoLib.itemNames.yellowSci4 = NewScience("yellow-sci-4", MomoLib.SpaceEx("data/significant"), 100)

MomoLib.itemNames.matterSci3 = NewScience("matter-sci-3", MomoLib.SpaceEx("data/doppler-shift"), 100)
