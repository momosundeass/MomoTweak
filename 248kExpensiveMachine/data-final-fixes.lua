local ITEM = momoIRTweak.FastItem
local Add = momo2k2.Add
local Rep = momo2k2.Rep
local Set = momo2k2.Set


if (settings.startup["momo-2k2-248k"].value and momo2k2.mods.K248) then
	--- 248k set recipe for this fu_ki_core_recipe in final fixes
	Rep("fu_ki_core_recipe", "electronic-circuit", ITEM("decider-combinator", 50))
	Rep("fu_ki_core_recipe", "advanced-circuit", ITEM("kr-research-server", 10))
	Rep("fu_ki_core_recipe", "steel-plate", ITEM("el_caster_item", 25))
	Add("fu_ki_core_recipe", ITEM("fi_ki_core_item", 1))
	
end

if (settings.startup["momo-2k2-science"].value) then
	--- 248k set recipe for these in final fixes
	Rep("logistic-science-pack", "blank-tech-card", {"basic-tech-card", 5})
	Add("military-science-pack", ITEM("automation-science-pack", 5))
	Rep("chemical-science-pack", "blank-tech-card", {"automation-science-pack", 5})
	Rep("production-science-pack", "blank-tech-card", {"logistic-science-pack", 10})
	Add("utility-science-pack", ITEM("chemical-science-pack", 10))
	Add("space-science-pack", ITEM("production-science-pack", 5))
	Add("matter-tech-card", ITEM("production-science-pack", 5))
	Add("advanced-tech-card", ITEM("utility-science-pack", 5))
	Add("singularity-tech-card", ITEM("utility-science-pack", 5))
end