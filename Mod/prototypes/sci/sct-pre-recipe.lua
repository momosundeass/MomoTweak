momoTweak.sct = {}
momoTweak.sct.recipe = {}

local sci_cat = momoTweak.getSciCategory()

local scts =    {"sct-2",        "sct-gun",        "sct-3",        "sct-production",        "sct-logistic",        "sct-high"}
local refSci =  {momoTweak.sci2, momoTweak.sciGun, momoTweak.sci3, momoTweak.sciProduction, momoTweak.sciLogistic, momoTweak.sciTech}
local timeMap = {5,              8,                10,             10,                      10,                    15}

local ref = data.raw.recipe[momoTweak.sci1].subgroup 

if (momoTweak.py.coal) then
	ref = "science-pack"
	data:extend({
		{
			type = "item-subgroup",
			name = "science-pack-py-com",
			group = data.raw["item-subgroup"][ref].group,
			order = "zzzzz"
		}
	})
	for i, sci in pairs(refSci) do
		data.raw.recipe[sci].subgroup = "science-pack-py-com"
	end
end

data.raw["item-subgroup"]["momo-science-materials"].group = data.raw["item-subgroup"][ref].group
data.raw["item-subgroup"]["momo-science-materials"].order = "zzz"

for i, item in pairs(scts) do
	momoTweak.sct.recipe[item] = momoTweak.createRecipe(sci_cat, {{item, 1}}, 
		{}, 
		timeMap[i], momoTweak.get_tech_of_recipe_no_demo(refSci[i])
	)
	data.raw.recipe[momoTweak.sct.recipe[item]].subgroup = data.raw.recipe[refSci[i]].subgroup
end

