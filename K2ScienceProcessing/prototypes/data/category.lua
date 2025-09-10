MomoLib.category = {}
MomoLib.category.handcraft = "handcraft-only"
MomoLib.category.crusher = "kr-crushing"
MomoLib.category.fluidCrafting = "crafting-with-fluid"
MomoLib.category.chemical = "chemistry"
MomoLib.category.cryogenic = "cryogenics"
MomoLib.category.cryogenicOrChemical = "chemistry-or-cryogenics"
MomoLib.category.chemicalOnly = "chemistry-only"
MomoLib.category.advChemical = "adv-chemistry"

MomoLib.category.electrolysis = "kr-electrolysis"

MomoLib.category.electronics = "electronics"
MomoLib.category.electromagnetic = "electromagnetics"

MomoLib.category.filtration = "kr-fluid-filtration"

MomoLib.category.researchServer = "researching-server"
MomoLib.category.quantumComputer = "quantum-computing"
MomoLib.category.researchCenter = "research-center"

MomoLib.category.refinery = "oil-processing"

MomoLib.category.centrifuge = "centrifuging"
MomoLib.category.centrifugeOnly = "centrifuge-only"
MomoLib.category.advancedCentrifugeOnly = "advanced-centrifuge-only"

MomoLib.category.indFurnace = "industrial-furnace-only"

MomoLib.category.oxidizer = "oxidize"
MomoLib.category.manufacture = "manufacture"
MomoLib.category.photometric = "photometric"
MomoLib.category.photometricCrafting = "photometric-crafting"
data:extend{
    {type="recipe-category", name=MomoLib.category.handcraft},
    {type="recipe-category", name=MomoLib.category.chemicalOnly},
    {type="recipe-category", name=MomoLib.category.advChemical},
    {type="recipe-category", name=MomoLib.category.centrifugeOnly},
    {type="recipe-category", name=MomoLib.category.advancedCentrifugeOnly},
    {type="recipe-category", name=MomoLib.category.oxidizer},
    {type="recipe-category", name=MomoLib.category.researchCenter},
    {type="recipe-category", name=MomoLib.category.researchServer},
    {type="recipe-category", name=MomoLib.category.quantumComputer},
    {type="recipe-category", name=MomoLib.category.indFurnace},
    {type="recipe-category", name=MomoLib.category.manufacture},
    {type="recipe-category", name=MomoLib.category.photometric},
    {type="recipe-category", name=MomoLib.category.photometricCrafting},
}

table.insert(data.raw.character.character.crafting_categories, MomoLib.category.handcraft)
MomoLib.machine.AddCategory(MomoLib.itemNames.chemicalPlant.n, MomoLib.category.chemicalOnly)
MomoLib.machine.AddCategory(MomoLib.itemNames.researchServer.n, MomoLib.category.researchServer)
MomoLib.machine.AddCategory(MomoLib.itemNames.quantumComputer.n, MomoLib.category.quantumComputer)
MomoLib.machine.AddCategory(MomoLib.itemNames.indFurnace.n, MomoLib.category.indFurnace)
MomoLib.machine.AddCategory(MomoLib.itemNames.advChemicalPlant.n, MomoLib.category.advChemical)
MomoLib.machine.AddCategory(MomoLib.itemNames.assembly3.n, MomoLib.category.photometricCrafting)
MomoLib.machine.AddCategory(MomoLib.itemNames.assembly4.n, MomoLib.category.photometricCrafting)
