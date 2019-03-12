if settings.startup["momo-buff-solar"].value then
	function buff(solar, base, multiple)
		if data.raw["solar-panel"][solar] then
			data.raw["solar-panel"][solar].production = (base * multiple) .. "kW"; 
		end
	end
	
	buff("solar-panel-2", 90, 2.5)
	buff("solar-panel-large-2", 160, 2.5)
	buff("solar-panel-small-2", 40, 2.5)
	
	buff("solar-panel-3", 135, 5)
	buff("solar-panel-large-3", 240, 5)
	buff("solar-panel-small-3", 60, 5)
end