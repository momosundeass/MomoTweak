local function ConvertMatter(recipeName, matterAmount, timeUse)
	local matter = data.raw.recipe[recipeName]
	matter.energy_require = timeUse
	momoIRTweak.AddOrUpdateToRecipe(recipeName, momoIRTweak.FastFluid("k-matter", matterAmount))
end

ConvertMatter("matter-to-automation-science-pack", 20, 10)

ConvertMatter("matter-to-logistic-science-pack", 45, 20)

ConvertMatter("matter-to-military-science-pack", 80, 33)

ConvertMatter("matter-to-chemical-science-pack", 150, 52)

ConvertMatter("matter-to-production-science-pack", 600, 100)

ConvertMatter("matter-to-utility-science-pack", 600, 80)

