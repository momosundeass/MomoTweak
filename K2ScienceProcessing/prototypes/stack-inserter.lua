
function MomoLib.StackBeltData()
    data.raw["utility-constants"].default.max_belt_stack_size = 6
    local tech = MomoLib.technology.Clone("transport-belt-capacity-2", "transport-belt-capacity-3")
    tech.prerequisites = {"transport-belt-capacity-2"}
    tech.unit.count = 12000
    tech.unit.ingredients ={
        MomoLib.MakeResearchIngredient(Item.purpleSci.n),
        MomoLib.MakeResearchIngredient(Item.yellowSci.n),
        MomoLib.MakeResearchIngredient(Item.whiteSci.n),
        MomoLib.MakeResearchIngredient(Item.matterSci.n),
    }
    tech.effects = {{type = "belt-stack-size-bonus", modifier=1}}
    data:extend{tech}

    tech = MomoLib.technology.Clone("transport-belt-capacity-3", "transport-belt-capacity-4")
    tech.prerequisites = {"transport-belt-capacity-3"}
    tech.unit.count = 30000
    tech.unit.ingredients ={
        MomoLib.MakeResearchIngredient(Item.purpleSci.n),
        MomoLib.MakeResearchIngredient(Item.yellowSci.n),
        MomoLib.MakeResearchIngredient(Item.whiteSci.n),
        MomoLib.MakeResearchIngredient(Item.matterSci.n),
        MomoLib.MakeResearchIngredient(Item.advSci.n),
    }
    tech.effects = {{type = "belt-stack-size-bonus", modifier=1}}
    data:extend{tech}
end 

function MomoLib.StackBeltDataFinal()
    MomoLib.technology.SetRequired(Item.stackInserter.tech, {"logistic-system", })
    MomoLib.recipe.SetIngredients(Item.stackInserter, {
        Item.bulkInserter:I(),
        Item.blueChip:I(),
        Item.advancedSplitter:I(),
        Item.robotFrame:I(),
        Item.batteryLithium:I(6)
    })

    MomoLib.GetPrototype("inserter", MomoLib.itemNames.stackInserter.n, function(prototype)
        prototype.max_belt_stack_size = 6
    end)
end