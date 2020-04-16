function momoTweak.recipe.Gold()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local components = momoTweak.components
	local FLUID = momoIRTweak.FastFluid
	local NEWComplex = momoIRTweak.recipe.NewComplexRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef
	local fluidName = momoTweak.fluid
	
	--- add liquid copper recipe
	momoIRTweak.ValidateFluid(fluidName.copper, function(fluid)
		local copperLiquid = NEWComplex("induction-smelting", "momo-gold-to-copper-liquid", {
			ITEM("ingot-gold", 6), 
			ITEM("ingot-copper", 12)
		}, {
			FLUID(fluid, 180)
		}, 4)
		copperLiquid.order = "g["..fluid.name.."]-a3"
		momoIRTweak.recipe.SetIcons(copperLiquid.name, fluid.icon, fluid.icon_size, { 
			momoTweak.icon.number[3] 
		})
		UnlockAt(copperLiquid, "anode-copper-smelting")
		
		copperLiquid = NEWComplex("induction-smelting", "momo-silver-gold-to-copper-liquid", {
			ITEM("ingot-silver", 6),
			ITEM("ingot-gold", 6),
			ITEM("ingot-copper", 12)
		}, {
			FLUID(fluid, 240)
		}, 4)
		copperLiquid.order = "g["..fluid.name.."]-a4"
		momoIRTweak.recipe.SetIcons(copperLiquid.name, fluid.icon, fluid.icon_size, { 
			momoTweak.icon.number[4] 
		})
		UnlockAt(copperLiquid, "anode-copper-smelting")
	end)
	
	AddIng(components.transformer, ITEM("gold-plate", 1))
	
	AddIng("bob-laser-turret-4", ITEM("gold-plate", 20))
	AddIng("bob-laser-turret-5", ITEM("gold-plate", 40))
end