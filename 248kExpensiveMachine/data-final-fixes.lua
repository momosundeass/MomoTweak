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