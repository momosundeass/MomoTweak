data:extend{{ type="module-category", name="yield", }}
local function ChangeToYield(moduleIndex, refSpeed, refProduct)
	local m = data.raw.module["bob-pollution-create-module-" .. moduleIndex]
	local eff = {}
	eff.pollution = m.effect.pollution
	
	local s = data.raw.module[refSpeed]
	local p = data.raw.module[refProduct]
	eff.consumption = p.effect.consumption * 1.33
	eff.quality = s.effect.quality
	
	eff.productivity = p.effect.productivity * 0.6
	
	m.effect = eff
	m.category = "yield"
	m.localised_name = {"item-name.yield-module-" .. moduleIndex}
	m.localised_description = {"description.yield-module-" .. moduleIndex}
end

data:extend{{ type="module-category", name="pure", }}
local function ChangeToPure(moduleIndex, refSpeed)
	local m = data.raw.module["bob-pollution-clean-module-" .. moduleIndex]
	local eff = {}
	local s = data.raw.module[refSpeed]
	eff.speed = (s.effect.speed * 0.6)
	eff.quality = s.effect.quality
	eff.pollution = data.raw.module["bob-pollution-create-module-" .. moduleIndex].effect.pollution
	m.effect = eff
	m.category = "pure"
	m.localised_name = {"item-name.pure-module-" .. moduleIndex}
	m.localised_description = {"description.pure-module-" .. moduleIndex}
end

ChangeToYield(1, "speed-module", "productivity-module")
ChangeToYield(2, "speed-module-2", "productivity-module-2")
ChangeToYield(3, "speed-module-3", "productivity-module-3")
ChangeToYield(4, "bob-speed-module-4", "bob-productivity-module-4")
ChangeToYield(5, "bob-speed-module-5", "bob-productivity-module-5")

ChangeToPure(1, "speed-module")
ChangeToPure(2, "speed-module-2")
ChangeToPure(3, "speed-module-3")
ChangeToPure(4, "bob-speed-module-4")
ChangeToPure(5, "bob-speed-module-5")

data.raw.beacon["beacon"].allowed_module_categories = {"speed", "efficiency"}
data.raw.beacon["bob-beacon-2"].allowed_module_categories = {"speed", "efficiency"}
data.raw.beacon["bob-beacon-3"].allowed_module_categories = {"speed", "efficiency"}

MomoLib.recipe.SetIngredients("bob-pollution-create-module-1", {
		MomoLib.MakeIngredient("speed-module", 1),
		MomoLib.MakeIngredient("productivity-module", 1)
	})
MomoLib.GetItem("bob-pollution-create-processor", function(p)
	MomoLib.recipe.SetIngredients("bob-pollution-create-processor", {
			MomoLib.MakeIngredient("bob-speed-processor", 1),
			MomoLib.MakeIngredient("bob-productivity-processor", 1)
		})
	p.localised_name = {"item-name.yield-processor"}
end)

MomoLib.GetItem("bob-pollution-create-processor-2", function(p)
	MomoLib.recipe.SetIngredients("bob-pollution-create-processor-2", {
			MomoLib.MakeIngredient("bob-speed-processor-2", 2),
			MomoLib.MakeIngredient("bob-productivity-processor-2", 2)
		})
	p.localised_name = {"item-name.yield-processor"}
end)

MomoLib.GetItem("bob-pollution-create-processor-3", function(p)
	MomoLib.recipe.SetIngredients("bob-pollution-create-processor-3", {
			MomoLib.MakeIngredient("bob-speed-processor-3", 3),
			MomoLib.MakeIngredient("bob-productivity-processor-3", 3)
		})
	p.localised_name = {"item-name.yield-processor"}
end)
MomoLib.recipe.SetIngredients("bob-pollution-clean-module-1", {
		MomoLib.MakeIngredient("speed-module", 1),
		MomoLib.MakeIngredient("efficiency-module", 2)
	})
MomoLib.GetItem("bob-pollution-clean-processor", function(p)
	MomoLib.recipe.SetIngredients("bob-pollution-clean-processor", {
			MomoLib.MakeIngredient("bob-speed-processor", 1),
			MomoLib.MakeIngredient("bob-efficiency-processor", 2)
		})
	p.localised_name = {"item-name.pure-processor"}
end)
MomoLib.GetItem("bob-pollution-clean-processor-2", function(p)
	MomoLib.recipe.SetIngredients("bob-pollution-clean-processor-2", {
			MomoLib.MakeIngredient("bob-speed-processor-2", 1),
			MomoLib.MakeIngredient("bob-efficiency-processor-2", 2)
		})
	p.localised_name = {"item-name.pure-processor"}
end)
MomoLib.GetItem("bob-pollution-clean-processor-3", function(p)
	MomoLib.recipe.SetIngredients("bob-pollution-clean-processor-3", {
			MomoLib.MakeIngredient("bob-speed-processor-3", 2),
			MomoLib.MakeIngredient("bob-efficiency-processor-3", 4)
		})
	p.localised_name = {"item-name.pure-processor"}
end)


local function NameTechnology(tech, item, index)
	MomoLib.GetTechnology(tech .. index, function(p) 
		p.localised_name = {item .. index}
	end)
end
NameTechnology("bob-pollution-create-module-", "item-name.yield-module-", 1)
NameTechnology("bob-pollution-create-module-", "item-name.yield-module-", 2)
NameTechnology("bob-pollution-create-module-", "item-name.yield-module-", 3)
NameTechnology("bob-pollution-create-module-", "item-name.yield-module-", 4)
NameTechnology("bob-pollution-create-module-", "item-name.yield-module-", 5)
NameTechnology("bob-pollution-clean-module-", "item-name.pure-module-", 1)
NameTechnology("bob-pollution-clean-module-", "item-name.pure-module-", 2)
NameTechnology("bob-pollution-clean-module-", "item-name.pure-module-", 3)
NameTechnology("bob-pollution-clean-module-", "item-name.pure-module-", 4)
NameTechnology("bob-pollution-clean-module-", "item-name.pure-module-", 5)
