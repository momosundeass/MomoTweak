function momoTweak.recipe.Silver()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local FLUID = momoIRTweak.FastFluid
	local NEWComplex = momoIRTweak.recipe.NewComplexRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef
	local fluidName = momoTweak.fluid
	
	-- add liquid copper recipe
	momoIRTweak.ValidateFluid(fluidName.copper, function(fluid)
		local copperLiquid = NEWComplex("induction-smelting", "momo-silver-to-copper-liquid", {
			ITEM("ingot-silver", 6), 
			ITEM("ingot-copper", 12)
		}, {
			FLUID(fluid, 180)
		}, 4)
		copperLiquid.order = "g["..fluid.name.."]-a2"
		momoIRTweak.recipe.SetIcons(copperLiquid.name, fluid.icon, fluid.icon_size, { 
			momoTweak.icon.number[2] 
		})
		UnlockAt(copperLiquid, "processed-copper-smelting")
	end)
end