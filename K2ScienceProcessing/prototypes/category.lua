MomoLib.category = {}
MomoLib.category.fluidCrafting = "crafting-with-fluid"
MomoLib.category.chemical = "chemistry"
MomoLib.category.advChemical = "adv-chemistry"
MomoLib.category.electrolysis = "kr-electrolysis"
MomoLib.category.electronics = "electronics"
MomoLib.category.filtration = "kr-fluid-filtration"
MomoLib.category.researchServer = "researching-server"
MomoLib.category.quantumComputer = "quantum-computing"
MomoLib.category.chemicalOnly = "chemistry-only"
MomoLib.category.refinery = "oil-processing"
MomoLib.category.centrifugeOnly = "centrifuge-only"
MomoLib.category.advancedCentrifugeOnly = "advanced-centrifuge-only"
MomoLib.category.oxidizer = "oxidize"
MomoLib.category.researchCenter = "research-center"
MomoLib.category.indFurnace = "industrial-furnace-only"
data:extend{
    {type="recipe-category", name=MomoLib.category.chemicalOnly},
    {type="recipe-category", name=MomoLib.category.advChemical},
    {type="recipe-category", name=MomoLib.category.centrifugeOnly},
    {type="recipe-category", name=MomoLib.category.advancedCentrifugeOnly},
    {type="recipe-category", name=MomoLib.category.oxidizer},
    {type="recipe-category", name=MomoLib.category.researchCenter},
    {type="recipe-category", name=MomoLib.category.researchServer},
    {type="recipe-category", name=MomoLib.category.quantumComputer},
    {type="recipe-category", name=MomoLib.category.indFurnace}
}
MomoLib.machine.AddCategory(MomoLib.itemNames.chemicalPlant.n, MomoLib.category.chemicalOnly)
MomoLib.machine.AddCategory(MomoLib.itemNames.researchServer.n, MomoLib.category.researchServer)
MomoLib.machine.AddCategory(MomoLib.itemNames.quantumComputer.n, MomoLib.category.quantumComputer)
MomoLib.machine.AddCategory(MomoLib.itemNames.indFurnace.n, MomoLib.category.indFurnace)
MomoLib.machine.AddCategory(MomoLib.itemNames.advChemicalPlant.n, MomoLib.category.advChemical)
