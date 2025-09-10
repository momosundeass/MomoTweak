
data:extend{{
    type="item-group",
    name="science",
    order=data.raw["item-group"]["intermediate-products"].order .. "-a",
    icon=MomoLib.SpaceExGraphics("item-group/science"),
    icon_size=128
}}
MomoLib.subgroup.sciInter = MomoLib.subgroup.New("science-intermediate", "science", "z", true)
MomoLib.subgroup.sciRe = MomoLib.subgroup.New("science-pack-recycle", "science", "z1", true)
MomoLib.subgroup.sciRe1 = MomoLib.subgroup.New("science-pack-recycle-1", "science", "z2", true)
MomoLib.subgroup.sciRe2 = MomoLib.subgroup.New("science-pack-recycle-2", "science", "z3", true)
MomoLib.subgroup.sciRe3 = MomoLib.subgroup.New("science-pack-recycle-3", "science", "z4", true)
MomoLib.subgroup.sciRe4 = MomoLib.subgroup.New("science-pack-recycle-4", "science", "z5", true)
MomoLib.subgroup.inRe = MomoLib.subgroup.New("intermediate-recycle", "science", "zz", true)
MomoLib.subgroup.uBelt = MomoLib.subgroup.New("underground-belt-2", "logistics", "b-2", true)

MomoLib.subgroup.redSci         = MomoLib.subgroup.New("red-sci", "science", "a", true)
MomoLib.subgroup.greenSci       = MomoLib.subgroup.New("green-sci", "science", "b", true)
MomoLib.subgroup.blueSci        = MomoLib.subgroup.New("blue-sci", "science", "c", true)
MomoLib.subgroup.blackSci       = MomoLib.subgroup.New("black-sci", "science", "d", true)
MomoLib.subgroup.purpleSci      = MomoLib.subgroup.New("purple-sci", "science", "e", true)
MomoLib.subgroup.yellowSci      = MomoLib.subgroup.New("yellow-sci", "science", "f", true)
MomoLib.subgroup.whiteSci       = MomoLib.subgroup.New("white-sci", "science", "g", true)
MomoLib.subgroup.matterSci      = MomoLib.subgroup.New("matter-sci", "science", "h", true)
MomoLib.subgroup.advSci         = MomoLib.subgroup.New("advanced-sci", "science", "i", true)
MomoLib.subgroup.singularitySci = MomoLib.subgroup.New("singularity-sci", "science", "j", true)

MomoLib.subgroups["science-pack"].group = "science"

local order = MomoLib.subgroups["production-machine"].order .. "-a"
MomoLib.subgroup.chemical = MomoLib.subgroup.New("machine-chemical", "production", order.."1", true)
MomoLib.subgroup.lab = MomoLib.subgroup.New("machine-lab", "production", order.."2", true)
MomoLib.subgroup.matter = MomoLib.subgroup.New("machine-matter", "production", order.."3", true)
MomoLib.subgroup.machineOther = MomoLib.subgroup.New("machine-other", "production", order.."4", true)

local item = MomoLib.itemNames
function MomoLib.UpdateMachineSubgroup()
    item.foundry:Prototype().subgroup = "production-machine"      

    for _, m in pairs{
        item.chemicalPlant, 
        item.refinery, 
        item.fuelRef,
        item.filtration,
        item.atmospheric, 
        item.electrolyser, 
        item.cryogenic, 
        item.advChemicalPlant,
        item.flareStack
    } do
        local sg = MomoLib.subgroup.chemical.name
        m = m:Prototype()
        m.subgroup = sg
        m.order = MomoLib.order.Auto(sg)
    end

    for _, m in pairs{
        item.researchCenter,
        item.researchServer,
        item.quantumComputer,
        item.burnerLab,
        item.lab, 
        item.lab2, 
        item.lab3, 
    } do
        local sg = MomoLib.subgroup.lab.name
        m = m:Prototype()
        m.subgroup = sg
        m.order = MomoLib.order.Auto(sg)
    end
    for _, m in pairs{
        item.centrifuge,
        item.advCentrifuge,
        item.matterAssociator,
        item.matterPlant,
        item.matterStabilizer,
    } do
        local sg = MomoLib.subgroup.matter.name
        m = m:Prototype()
        m.subgroup = sg
        m.order = MomoLib.order.Auto(sg)
    end

    for _, m in pairs{
        item.crusher,
        item.recycler,
        item.airPurifier,
        item.greenHouse,
        item.biolab,
    } do
        local sg = MomoLib.subgroup.machineOther.name
        m = m:Prototype()
        m.subgroup = sg
        m.order = MomoLib.order.Auto(sg)
    end
end

MomoLib.SetGroup("steel-processing", "kr-smelting-crafting")
MomoLib.SetGroup("coal-processing", "kr-smelting-crafting")
MomoLib.SetGroup("stone-processing", "kr-smelting-crafting")
MomoLib.SetGroup("ore-chunk", "kr-smelting-crafting")
MomoLib.SetGroup("ore-clump", "kr-smelting-crafting")
MomoLib.SetGroup("ore-dust", "kr-smelting-crafting")
MomoLib.SetGroup("alternative-smelting", "kr-smelting-crafting")
MomoLib.SetGroup("ore-transitions3", "kr-smelting-crafting")
MomoLib.SetGroup("ore-transitions2", "kr-smelting-crafting")
MomoLib.SetGroup("ore-transitions1", "kr-smelting-crafting")
MomoLib.SetGroup("ore-transitions4", "kr-smelting-crafting")