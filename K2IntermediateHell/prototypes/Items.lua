local item = MomoLib.itemNames

local function NewScience(name, icon, stackSize)
    local item = MomoLib.itemName:New(MomoLib.item.Create(name, icon, stackSize))
    item.subgroup = "science-pack"
    item.auto_recycle = false
    return item
end  

item.redSci1 = NewScience("red-sci-1", MomoLib.icon.FromIngredientWithSize(item.redSci), 50)
item.greenSci1 = NewScience("green-sci-1", MomoLib.icon.FromIngredientWithSize(item.greenSci), 50)

item.memoryBlock = NewScience("memory-block-a", {MomoLib.icon.Get("memory-block.png"), 32}, 100)

item.blackSci1 = NewScience("black-sci-1", MomoLib.icon.FromIngredientWithSize(item.blackSci), 50)
-- item.blueSci1 = NewScience("blue-sci-1", MomoLib.icon.FromIngredientWithSize(item.blueSci), 10)
-- item.purpleSci1 = NewScience("purple-sci-1", MomoLib.icon.FromIngredientWithSize(item.purpleSci), 10)
-- item.yellowSci1 = NewScience("yellow-sci-1", MomoLib.icon.FromIngredientWithSize(item.yellowSci), 10)
-- item.whiteSci1 = NewScience("white-sci-1", MomoLib.icon.FromIngredientWithSize(item.whiteSci), 10)

