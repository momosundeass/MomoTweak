local function Prod(recipe) 
	local has = MomoLib.GetRecipe(recipe, function(p)
		p.allow_productivity = true
	end)
	if not has then
		error("No recipe with name : " .. recipe)
	end
	
end

Prod("bob-ruby-5")
Prod("bob-sapphire-5")
Prod("bob-emerald-5")
Prod("bob-amethyst-5")
Prod("bob-topaz-5")
Prod("bob-diamond-5")

local I = MomoLib.MakeIngredient
local F = MomoLib.MakeFluidIngredient
local function Recipe(items, results, name)
	local rec = MomoLib.recipe.New(
		{I(items[1], 2), I(items[2], 1), F("bob-hydrogen-chloride", 2)},
		results,
		name .. "-1")
	rec.energy_required = 17.5
	rec.category = "chemistry"
	rec.icons = MomoLib.icon.MakeLayeredItemIcon(items[1], results[2].name)
	rec.localised_name = {"recipe-name.ore-to-gem"}
	rec.subgroup = "bob-gems-ore-proc"
	data:extend{rec}
	MomoLib.technology.AddRecipe("bob-gem-processing-4", rec.name)
	
	local rec2 = MomoLib.recipe.New(
		{I(items[1], 1), I(items[2], 2), F("bob-hydrogen-chloride", 2)},
		results,
		name .. "-2")
	rec2.energy_required = 17.5
	rec2.category = "chemistry"
	rec2.icons = MomoLib.icon.MakeLayeredItemIcon(items[2], results[3].name)
	rec2.localised_name = {"recipe-name.ore-to-gem"}
	rec2.subgroup = "bob-gems-ore-proc"
	data:extend{rec2}
	MomoLib.technology.AddRecipe("bob-gem-processing-4", rec2.name)
end

local tech = MomoLib.technology.Clone("bob-gem-processing-3", "bob-gem-processing-4")
tech:COUNT(1000):TIME(30):INGREDIENTS{
	MomoLib.MakeResearchIngredient("automation-science-pack", 1),
	MomoLib.MakeResearchIngredient("logistic-science-pack", 1),
	MomoLib.MakeResearchIngredient("chemical-science-pack", 1),
	MomoLib.MakeResearchIngredient("production-science-pack", 1)
}
tech:PRE{"bob-gem-processing-3", "production-science-pack"}:EFFECTS():Extend()

local sg = MomoLib.subgroups["bob-gems-polished"]
data:extend{MomoLib.subgroup.New("bob-gems-ore-proc", sg.group, sg.order .. "z")}

Recipe({"bob-tin-ore", "bob-lead-ore"}, 
	{I("stone", 3), I("bob-ruby-3", 2, 0.5), I("bob-sapphire-3", 1, 0.45)},
	"ruby-sapphire")
	
Recipe({"bob-zinc-ore", "bob-nickel-ore"}, 
	{I("stone", 3), I("bob-emerald-3", 1, 0.3), I("bob-amethyst-3", 1, 0.3)},
	"emerald-amethyst")
	
Recipe({"bob-tungsten-ore", "bob-rutile-ore"}, 
	{I("stone", 3), I("bob-topaz-3", 1, 0.20), I("bob-diamond-3", 1, 0.12)},
	"topaz-diamond")

local function Tech5()
	tech = MomoLib.technology.Clone("bob-gem-processing-4", "bob-gem-processing-5")	
	tech.unit = {count=3000, time=30, ingredients={
		MomoLib.MakeResearchIngredient("automation-science-pack", 1),
		MomoLib.MakeResearchIngredient("logistic-science-pack", 1),
		MomoLib.MakeResearchIngredient("chemical-science-pack", 1),
		MomoLib.MakeResearchIngredient("production-science-pack", 1),
		MomoLib.MakeResearchIngredient("utility-science-pack", 1),
		MomoLib.MakeResearchIngredient("space-science-pack", 1)
	}}
	tech.prerequisites = {"bob-gem-processing-4", "space-science-pack"}
	tech.effects = {}
	data:extend{tech}
end Tech5()

local function RawDiamond()
	MomoLib.recipe.New(
		{I("bob-carbon", 54), I("nuclear-fuel", 1)}, 
		{I("bob-diamond-3", 1), I("uranium-238", {1, 2})},
		"artifact-diamond")
	:CATEGORY("centrifuging")
	:TIME(120)
	:ICON{"bob-carbon", "bob-diamond-3"}
	:SUBGROUP("bob-gems-ore-proc")
	:UNLOCK("bob-gem-processing-5")
	:Extend()
end RawDiamond()

local function RawAmethyst()
	MomoLib.recipe.New(
		{I("bob-quartz", 12), I("iron-plate", 4), F("bob-oxygen", 16)}, 
		{I("bob-amethyst-3", 1, 0.93), I("stone", {6, 14})}, 
		"artifact-amethyst")
	:CATEGORY("bob-electrolysis")
	:TIME(30)
	:ICON{"bob-quartz", "bob-amethyst-3"}
	:SUBGROUP("bob-gems-ore-proc")
	:UNLOCK("bob-gem-processing-5")
	:Extend()
end RawAmethyst()