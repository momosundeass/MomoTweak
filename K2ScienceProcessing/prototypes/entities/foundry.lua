MomoLib.technology.SetRequired(Item.foundry.n, {"advanced-ore-processing", "advanced-material-processing-2", Item.hdpeAlloy.tech})

MomoLib.GetTechnology(Item.foundry.n, function(p) 
    p:EFFECTS():COUNT(300):INGREDIENTS({
        MomoLib.MakeResearchIngredient(Item.redSci.n, 1),
        MomoLib.MakeResearchIngredient(Item.greenSci.n, 1),
        MomoLib.MakeResearchIngredient(Item.blueSci.n, 1),
    }):RECIPE{
        Item.foundry.n, 
    }
end)

MomoLib.recipe.SetIngredients(Item.foundry, {
    Item.elecFurnace:I(2),
    Item.crusher:I(),
    Item.concrete:I(100),
    Item.hdpeAlloy:I(40),
    Item.echamber1:I(2)
})

MomoLib.GetRecipe(Item.chemicalPlant.n,          function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.expressUndergroundBelt.n, function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.expressSplitter.n,        function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.inserter.n,               function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.fastInserter.n,           function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.assembly.n,               function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.assembly2.n,              function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.assembly3.n,              function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.oilPump.n,                function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.mineralWaterPump.n,       function(p) p:ADDCATEGORY{"metallurgy"} end)
MomoLib.GetRecipe(Item.flareStack.n,             function(p) p:ADDCATEGORY{"metallurgy"} end)

MomoLib.GetRecipe(Item.advancedBelt.n,              function(p) p:CATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.advancedUndergroundBelt.n,   function(p) p:CATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.advancedSplitter.n,          function(p) p:CATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.superiorBelt.n,              function(p) p:CATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.superiorUndergroundBelt.n,   function(p) p:CATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.superiorSplitter.n,          function(p) p:CATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.lds.n,                       function(p) p:ADDCATEGORY("metallurgy") end)
MomoLib.GetRecipe(Item.hdpeAlloy.n,                 function(p) p:ADDCATEGORY("metallurgy") end)


MomoLib.recipe.DeExtend("casting-pipe")
MomoLib.recipe.DeExtend("casting-pipe-to-ground")
MomoLib.recipe.DeExtend("iron-ore-melting")
MomoLib.recipe.DeExtend("copper-ore-melting")
MomoLib.recipe.DeExtend("casting-iron")
MomoLib.recipe.DeExtend("casting-copper")
MomoLib.recipe.DeExtend("casting-steel")
MomoLib.recipe.DeExtend("casting-iron-gear-wheel")
MomoLib.recipe.DeExtend("casting-iron-stick")
MomoLib.recipe.DeExtend("casting-low-density-structure")
MomoLib.recipe.DeExtend("concrete-from-molten-iron")
MomoLib.recipe.DeExtend("casting-copper-cable")
