local function GetSprite(path)
	return "__MomoPyTweak__/graphics/entity/solar-panel/" .. path .. ".png"
end

function momoPyTweak.SolarPanel()
	local prototype = {}
	
	local refItem = data.raw.item["solar-panel"]
	momoPyTweak.item.solarPanel2 = momoIRTweak.item.NewItemFixedSize("momo-solar-panel-2", 32, refItem.subgroup, 50)
	momoPyTweak.item.solarPanel2.order = refItem.order .. "!1"
	momoPyTweak.item.solarPanel2.place_result = "momo-solar-panel-2"
	
	prototype = momoIRTweak.DeepCopy(data.raw["solar-panel"]["solar-panel"])
	prototype.name = "momo-solar-panel-2"
	prototype.minable.result = "momo-solar-panel-2"
	prototype.production = "180kW"
	prototype.picture.layers[1].filename = GetSprite("momo-solar-panel-2")
	prototype.picture.layers[1].hr_version.filename = GetSprite("hr-momo-solar-panel-2")
	data:extend({prototype})
	
	momoPyTweak.item.solarPanel3 = momoIRTweak.item.NewItemFixedSize("momo-solar-panel-3", 32, refItem.subgroup, 50)
	momoPyTweak.item.solarPanel3.order = refItem.order .. "!2"
	momoPyTweak.item.solarPanel3.place_result = "momo-solar-panel-3"
	
	prototype = momoIRTweak.DeepCopy(data.raw["solar-panel"]["solar-panel"])
	prototype.name = "momo-solar-panel-3"
	prototype.minable.result = "momo-solar-panel-3"
	prototype.production = "540kW"
	prototype.picture.layers[1].filename = GetSprite("momo-solar-panel-3")
	prototype.picture.layers[1].hr_version.filename = GetSprite("hr-momo-solar-panel-3")
	data:extend({prototype})
end

function momoPyTweak.updates.SolarPanelTechnology()
	local sci = momoPyTweak.science

	local prototype = {}
	prototype = momoIRTweak.technology.ClonePrototype("solar-energy", "momo-solar-panel-2")
	momoIRTweak.technology.SetPrerequirePrototype(prototype, {"solar-energy", sci.pack3Tech})
	momoIRTweak.technology.ClearEffects(prototype)
	momoIRTweak.technology.SetUnit(prototype, {
		{sci.pack1, 2},
		{sci.pack2, 1},
		{sci.pack3, 1}
	}, 60, 120)
	prototype.enabled = false
	data:extend({prototype})
	
	prototype = momoIRTweak.technology.ClonePrototype("solar-energy", "momo-solar-panel-3")
	momoIRTweak.technology.SetPrerequirePrototype(prototype, {"momo-solar-panel-2", sci.packProductionTech})
	momoIRTweak.technology.ClearEffects(prototype)
	momoIRTweak.technology.SetUnit(prototype, {
		{sci.pack1, 2},
		{sci.pack2, 1},
		{sci.pack3, 1},
		{sci.packProduction, 1}
	}, 60, 400)
	prototype.enabled = false
	data:extend({prototype})
end

function momoPyTweak.updates.SolarPanel()
	local ITEM = momoIRTweak.FastItem

	data.raw.technology["momo-solar-panel-2"].enabled = true
	data.raw.technology["momo-solar-panel-3"].enabled = true
	
	local recipe = momoIRTweak.recipe.NewRecipe("crafting", "momo-solar-panel-2", 1, {
		ITEM("solar-panel", 2),
		ITEM("advanced-circuit", 2),
		ITEM("nexelit-matrix", 6),
		ITEM("glass-fiber", 10)
	}, 20)
	momoIRTweak.technology.AddUnlockEffect("momo-solar-panel-2", recipe.name)
	
	recipe = momoIRTweak.recipe.NewRecipe("crafting", "momo-solar-panel-3", 1, {
		ITEM("momo-solar-panel-2", 1),
		ITEM("processing-unit", 4),
		ITEM("crco-alloy", 10),
		ITEM("nylon", 20),
		ITEM("quantum-vortex-storage-system", 1)
	}, 45)
	momoIRTweak.technology.AddUnlockEffect("momo-solar-panel-3", recipe.name)
end







