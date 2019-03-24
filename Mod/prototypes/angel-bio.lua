local tree = "solid-tree"
local seed = {}
seed.temp = "tree-temperate-seed"
seed.swamp = "tree-swamp-seed"
seed.desert = "tree-desert-seed"
local garden = {}
garden.temp = "temperate-garden"
garden.desert = "desert-garden"
garden.swamp = "swamp-garden"
local token = "token-bio"
local aboretum_category = "angels-arboretum"

local press_category = "bio-pressing"
local procss_category = "bio-processor"

local aboretum_tech = "bio-aboretum-1"
local aboretum_tech2 = "bio-aboretum-2"
local aboretum_tech3 = "bio-aboretum-3"
local biome_tech = {}
biome_tech.temp = "bio-aboretum-temperate"
biome_tech.desert = "bio-aboretum-desert"
biome_tech.swamp = "bio-aboretum-swamp"

local catalyst = {}
catalyst.metal = "catalyst-metal-carrier"
catalyst.red = "catalyst-metal-red"
catalyst.blue = "catalyst-metal-blue" 
catalyst.green = "catalyst-metal-green"
catalyst.yellow = "catalyst-metal-yellow"

local product = {}
product.temp =   {"temperate-1", "temperate-2", "temperate-3", "temperate-4", "temperate-5"}
product.desert = {"desert-1",    "desert-2",    "desert-3",    "desert-4",    "desert-5"}
product.swamp =  {"swamp-1",     "swamp-2",     "swamp-3",     "swamp-4",     "swamp-5"}

local refsubgroup = data.raw["item-subgroup"][data.raw.item["temperate-1"].subgroup]
data:extend({
{
	type = "item-subgroup",
	name = "momo-bio-materials",
	group = refsubgroup.group,
	order = "zzzzz"
}
})
local ICON = "__MomoTweak__/graphics/icons/"
local count = 0
local function bio_item(Name)
	data:extend({
    {
        type = "item",
        name = Name,
        icon = ICON .. Name .. ".png",
        icon_size = 32,
        subgroup = "momo-bio-materials",
        order = "f[" .. count .. "]",
        stack_size = 200
    }
    })
	count = count + 1
end

function momoTweak.angel_bio_data()
	bio_item("momo-oil-pack")

	bio_item("bio-grade-1")
	bio_item("bio-grade-2")
	bio_item("bio-grade-3")
	
	bio_item("bio-temp")
	bio_item("bio-desert")
	bio_item("bio-swamp")
end

local biome = {"temp", "swamp", "desert"}

function momoTweak.angel_bio_update()
	for i, name in pairs({"temp", "swamp", "desert"}) do
		momoTweak.createRecipe(aboretum_category, {{garden[name], 1}}, {
			{seed[name], 20},
			{tree, 25}
		}, 700, aboretum_tech2)
		momoTweak.createRecipe("crafting", {{"bio-" .. name, 3}},{
			{product[name][1], 8},
			{product[name][2], 8},
			{product[name][3], 8},
			{product[name][4], 8},
			{product[name][5], 8}
		}, 10, biome_tech[name] .. "-1")
	end
	
	momoTweak.createRecipe(procss_category, {{token, 1}}, {
		{tree, 35}
	}, 300, aboretum_tech)
	
	local board2 = momoTweak.ele.board[2]
	for	i, name in pairs({board2, momoTweak.recipe.tin_board2}) do
		momoTweak.replace_with_ingredient(name, "wood", {"solid-paper", 3})
	end
	
	momoTweak.createRecipe("crafting", {{"bio-grade-1", 1}}, {
		{token, 2},
		{"bio-temp", 2},
	}, 3, aboretum_tech2)
	
	momoTweak.createRecipe("crafting", {{"bio-grade-2", 1}}, {
		{token, 2},
		{"red-cellulose-fiber", 18},
		{"bio-swamp", 1},
		{"bio-desert", 2}
	}, 3, aboretum_tech3)
	
	momoTweak.createRecipe("crafting", {{"bio-grade-3", 1}}, {
		{"blue-cellulose-fiber", 18},
		{token, 2},
		{"bio-grade-1", 3},
		{"bio-desert", 4},
		{"bio-swamp", 4}
	}, 3, aboretum_tech3)
	
	
end

function momoTweak.angel_bio_final()
	bobmods.lib.recipe.add_ingredient(momoTweak.sci3, {"bio-grade-1", 1})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciProduction, {"bio-grade-2", 1})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciLogistic, {"bio-grade-2", 1})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciTech, {"bio-grade-3", 1})
end

momoTweak.angel_bio_data()




















