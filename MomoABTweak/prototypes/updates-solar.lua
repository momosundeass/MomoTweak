function momoTweak.updates.Solar() 
	local function AddGlass(recipe, amount) 
		momoIRTweak.recipe.SafeAddIngredient(recipe, momoIRTweak.FastItem("glass", amount))
	end

	AddGlass("solar-panel", 8)
	AddGlass("solar-panel-large", 16)
	AddGlass("solar-panel-small", 4)

	AddGlass("solar-panel-2", 20)
	AddGlass("solar-panel-large-2", 40)
	AddGlass("solar-panel-small-2", 10)

	AddGlass("solar-panel-3", 42)
	AddGlass("solar-panel-large-3", 84)
	AddGlass("solar-panel-small-3", 21)

	function Buff(solar, base, multiple)
		if data.raw["solar-panel"][solar] then
			data.raw["solar-panel"][solar].production = (base * multiple) .. "kW"; 
		end
	end
	
	Buff("solar-panel-2", 90, 2.5)
	Buff("solar-panel-large-2", 160, 2.5)
	Buff("solar-panel-small-2", 40, 2.5)
	
	Buff("solar-panel-3", 135, 5)
	Buff("solar-panel-large-3", 240, 5)
	Buff("solar-panel-small-3", 60, 5)
end