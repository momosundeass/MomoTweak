MomoLib.technology.SetRequired(Item.emPlant.tech, Item.radar2.tech)
MomoLib.technology.RemoveIngredient(Item.emPlant.tech, Item.purpleSci.name)

MomoLib.recipe.SetIngredients(Item.emPlant, {
    Item.lab2:I(2),
    Item.radar2:I(),
    Item.strongBox:I(),
    Item.bulkInserter:I(6),
    Item.heatPipe:I(20),
    Item.lds:I(20),
})
MomoLib.recipe.SetIngredients(Item.radar2, {
    Item.lamp:I(15),
    Item.radar:I(),
    Item.heatPipe:I(5),
    Item.refConcrete:I(50),
    Item.electricEngine:I(10)
})
MomoLib.technology.SetRequired(Item.aiCore.tech, {Item.emPlant.tech, Item.speedModule3.tech})
MomoLib.recipe.SetIngredients(Item.aiCore, {
    Item.speedModule3:I(3),
    Item.imersiteCrystal:I(3),
    Item.researchServer:I(),
    Item.nitricAcid:I(60),
    Item.ionizedMatter:I(4000)
}):ADDPRODUCT(Item.researchServer:I(1, 0.64)):CATEGORY(MomoLib.category.electromagnetic)
MomoLib.recipe.New({
    Item.ionMatter:I(40),
    Item.carbon:I(2),
    Item.solidFuel:I(6)
}, {
    Item.ionizedMatter:I(1400)
}):CATEGORY(MomoLib.category.electromagnetic):TIME(16):UNLOCK(Item.aiCore.tech):Extend()