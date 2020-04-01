function momoPyTweak.ArmorInventory()
	data.raw.armor["light-armor"].inventory_size_bonus = 10
	data.raw.armor["heavy-armor"].inventory_size_bonus = 20
	data.raw.armor["modular-armor"].inventory_size_bonus = 30
	data.raw.armor["power-armor"].inventory_size_bonus = 40
	data.raw.armor["power-armor-mk2"].inventory_size_bonus = 50
	
	if (momoPyTweak.mods.alienTech) then
		local armor = data.raw.armor["Schall-power-armor-mk3"]
		if (armor) then armor.inventory_size_bonus = 70 end
	end
end