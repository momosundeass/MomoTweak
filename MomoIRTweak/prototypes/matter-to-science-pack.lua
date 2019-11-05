local function ConvertMatter(recipeName, matterAmount, timeUse)
	local matter = data.raw.recipe[recipeName]
	if(matter) then 
		matter.energy_require = timeUse
		momoIRTweak.recipe.AddOrUpdateIngredient(recipeName, momoIRTweak.FastFluid("k-matter", matterAmount))
	end
end

local values = {}
values.automation = 20
values.logistic = 45
values.military = 80
values.chemical = 150
values.production = 600
values.utility = 600

ConvertMatter("matter-to-automation-science-pack", values.automation, 10)
ConvertMatter("matter-to-logistic-science-pack", values.logistic, 20)

if (momoIRTweak.science.isHarderPack) then
		values.military = values.military + 50
		values.chemical = values.chemical + 130
		values.production = values.production + 150
		values.utility = values.utility + 300
	
	if (momoIRTweak.electronics.isHarder) then
		values.military = values.military + 25
		values.chemical = values.chemical + 75
		values.production = values.production + 100
		values.utility = values.utility + 200
	end
end

if (momoIRTweak.science.isTiered) then
	values.military = values.military + values.automation
	
	values.chemical = values.chemical + values.logistic
	
	values.production = values.production + values.automation + values.logistic
	
	values.utility = values.utility + values.logistic + values.military + values.chemical
end

ConvertMatter("matter-to-military-science-pack", values.military, 33)

ConvertMatter("matter-to-chemical-science-pack", values.chemical, 52)

ConvertMatter("matter-to-production-science-pack", values.production, 100)

ConvertMatter("matter-to-utility-science-pack", values.utility, 80)

