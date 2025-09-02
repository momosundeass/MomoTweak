local item = MomoLib.itemNames
local NewScience = MomoLib.NewScience
local sb = MomoLib.subgroup

MomoLib.itemNames.imersiteJelly    = MomoLib.NewIntermediate("imersite-jelly", MomoLib.SpaceEx("naquium-tessaract"), 100)
MomoLib.itemNames.electrolyte      = MomoLib.NewFluid("electrolyte", MomoLib.Graphics("space-age/electrolyte.png"), {r = 200/255, g = 51/255, b=104/255, a=1}, false)

-- advanced
MomoLib.itemNames.supercapacitor   = MomoLib.NewIntermediate("supercapacitor", MomoLib.Graphics("space-age/supercapacitor.png"))
MomoLib.itemNames.superconductor   = MomoLib.NewIntermediate("superconductor", MomoLib.Graphics("space-age/superconductor.png"))
MomoLib.itemNames.quantumProcessor = MomoLib.NewIntermediate("quantum-processor", MomoLib.Graphics("space-age/quantum-processor.png"))
MomoLib.itemNames.nanoCarbon       = MomoLib.NewIntermediate("nano-carbon", MomoLib.Graphics("space-age/carbon-fiber.png"))

MomoLib.subgroup.ChangeItem(item.basicSci.n, sb.redSci.name)
MomoLib.subgroup.ChangeItem(item.techCard.n, sb.redSci.name)
MomoLib.subgroup.ChangeItem(item.redSci.n, sb.redSci.name)
MomoLib.itemNames.redSci1 = NewScience("red-sci-1", MomoLib.icon.FromIngredientWithSize(item.redSci), 20, sb.redSci.name)

MomoLib.subgroup.ChangeItem(item.greenSci.n, sb.greenSci.name)
MomoLib.itemNames.greenSci1 = NewScience("green-sci-1", MomoLib.icon.FromIngredientWithSize(item.greenSci), 20, sb.greenSci.name)
MomoLib.itemNames.greenSci2 = NewScience("green-sci-2", MomoLib.AltCard("logistic-science-pack"), 100, sb.greenSci.name)
MomoLib.itemNames.greenSci3 = NewScience("green-sci-3", MomoLib.Graphics("space-age/jelly.png"), 20, sb.greenSci.name)

MomoLib.itemNames.memoryBlock = NewScience("memory-block-a", {MomoLib.icon.Get("memory-block.png"), 32}, 100, sb.sciInter.name)

MomoLib.subgroup.ChangeItem(item.blackSci.n, sb.blackSci.name)
MomoLib.subgroup.ChangeItem(item.biterResearch.n, sb.blackSci.name)
MomoLib.itemNames.blackSci1 = NewScience("black-sci-1", MomoLib.icon.FromIngredientWithSize(item.blackSci), 20, sb.blackSci.name)

MomoLib.subgroup.ChangeItem(item.blueSci.n, sb.blueSci.name)
MomoLib.itemNames.blueSci1 = NewScience("blue-sci-1", MomoLib.icon.FromIngredientWithSize(item.blueSci), 20, sb.blueSci.name)
MomoLib.itemNames.blueSci2 = NewScience("blue-sci-2", MomoLib.AltCard("chemical-science-pack"), 20, sb.blueSci.name)

MomoLib.itemNames.ionMatter  = MomoLib.NewFluid("ion-matter", MomoLib.Graphics("space-age/thruster-oxidizer.png"), {r = 84/255, g = 233/255, b=248/255, a=1}, true)
MomoLib.itemNames.ionizedMatter = MomoLib.NewFluid("ionized-matter", MomoLib.SpaceEx("fluid/ion-stream"), {r = 84/255, g = 233/255, b=248/255, a=1}, true)
MomoLib.itemNames.inconShape = NewScience("incontinue-shape", {MomoLib.icon.Get("incontinue-shape.png"), 32}, 100, sb.sciInter.name)

MomoLib.subgroup.ChangeItem(item.purpleSci.n, sb.purpleSci.name)
MomoLib.itemNames.purpleSci1 = NewScience("purple-sci-1", MomoLib.icon.FromIngredientWithSize(item.purpleSci), 20, sb.purpleSci.name)
MomoLib.itemNames.purpleSci2 = NewScience("purple-sci-2", MomoLib.AltCard("production-science-pack"), 100, sb.purpleSci.name)
MomoLib.itemNames.purpleSci3 = NewScience("purple-sci-3", {MomoLib.icon.Get("purple-sci-3.png"), 32}, 100, sb.purpleSci.name)

MomoLib.itemNames.carbon = MomoLib.NewIntermediate("carbon", MomoLib.Graphics("space-age/carbon.png"), 100)
MomoLib.itemNames.scienceHardware = NewScience("science-hardware", MomoLib.icon.Get("science-hardware.png"), 50, sb.sciInter.name)
MomoLib.itemNames.lattice = NewScience("lattice", MomoLib.Graphics("space-age/lithium-plate.png"), 50, sb.sciInter.name)

MomoLib.subgroup.ChangeItem(item.yellowSci.n, sb.yellowSci.name)
MomoLib.itemNames.yellowSci1 = NewScience("yellow-sci-1", MomoLib.icon.FromIngredientWithSize(item.yellowSci), 20, sb.yellowSci.name)
MomoLib.itemNames.yellowSci2 = NewScience("yellow-sci-2", MomoLib.AltCard("utility-science-pack"), 500, sb.yellowSci.name)
MomoLib.itemNames.yellowSci3 = NewScience("yellow-sci-3", MomoLib.icon.Get("yellow-sci-3.png", 32), 50, sb.yellowSci.name)
MomoLib.itemNames.yellowSci4 = NewScience("yellow-sci-4", MomoLib.SpaceEx("data/significant"), 100, sb.yellowSci.name)

MomoLib.subgroup.ChangeItem(item.whiteSci.n, sb.whiteSci.name)
MomoLib.subgroup.ChangeItem(item.spaceResearch.n, sb.whiteSci.name)
MomoLib.itemNames.whiteSci1 = NewScience("white-sci-1", MomoLib.icon.FromIngredientWithSize(item.whiteSci), 20, sb.whiteSci.name)
MomoLib.itemNames.whiteSci2 = NewScience("white-sci-2", MomoLib.AltCard("space-science-pack"), 500, sb.whiteSci.name)
MomoLib.itemNames.whiteSci3 = NewScience("white-sci-3", MomoLib.icon.Get("white-sci-3.png", 32), 50, sb.whiteSci.name)
MomoLib.itemNames.whiteSci4 = NewScience("white-sci-4", MomoLib.SpaceEx("data/orbital"), 100, sb.whiteSci.name)
MomoLib.itemNames.whiteSci5 = NewScience("white-sci-5", MomoLib.SpaceEx("catalogue/deep-1"), 100, sb.whiteSci.name)
MomoLib.itemNames.whiteSci6 = NewScience("white-sci-6", MomoLib.SpaceEx("catalogue/deep-4"), 100, sb.whiteSci.name)

MomoLib.itemNames.whiteSciN = NewScience("white-sci-n", MomoLib.SpaceEx("data/empty"), 100, sb.whiteSci.name, true)

MomoLib.itemNames.fusionIon = MomoLib.NewIntermediate("fusion-ion", MomoLib.Graphics("space-age/fusion-power-cell.png"), 10)
MomoLib.itemNames.carbine   = MomoLib.NewIntermediate("carbine", MomoLib.Graphics("space-age/tungsten-carbide.png"), 100)
MomoLib.itemNames.scienceHardware2 = NewScience("science-hardware-2", MomoLib.icon.Get("science-hardware-2.png"), 50, sb.sciInter.name)

MomoLib.subgroup.ChangeItem(item.matterSci.n, sb.matterSci.name)
MomoLib.subgroup.ChangeItem(item.matterResearch.n, sb.matterSci.name)
MomoLib.itemNames.matterSci1 = NewScience("matter-sci-1", MomoLib.Graphics("space-age/cryogenic-science-pack.png"), 20, sb.matterSci.name)
MomoLib.itemNames.matterSci2 = NewScience("matter-sci-2", MomoLib.AltCard("kr-matter-tech-card"), 20, sb.matterSci.name)
MomoLib.itemNames.matterSci3 = NewScience("matter-sci-3", MomoLib.icon.Get("matter-sci-3.png", 32), 50, sb.matterSci.name)
MomoLib.itemNames.matterSci4 = NewScience("matter-sci-4", MomoLib.SpaceEx("data/doppler-shift"), 100, sb.matterSci.name)
MomoLib.itemNames.matterSci5 = NewScience("matter-sci-5", MomoLib.SpaceEx("catalogue/astronomic-catalogue-3"), 100, sb.matterSci.name)
MomoLib.itemNames.matterSci6 = NewScience("matter-sci-6", MomoLib.SpaceEx("catalogue/astronomic-3"), 10, sb.matterSci.name)
MomoLib.itemNames.matterSci7 = NewScience("matter-sci-7", MomoLib.SpaceEx("data/darkmatter"), 100, sb.matterSci.name)



MomoLib.subgroup.ChangeItem(item.advSci, sb.advSci.name)
-- MomoLib.itemNames.advSci1 = NewScience("matter-sci-1", MomoLib.Graphics("space-age/cryogenic-science-pack.png"), 20, sb.matterSci.name)
