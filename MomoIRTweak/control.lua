script.on_event("momo-debug", function(e)
	if settings.startup["momo-debug"].value then
		local logging = ""
		local p = game.players[1]
		local slot = 1
		local items = {}
		
		for name, count in pairs(p.get_main_inventory().get_contents()) do
			p.print("["..slot.."]" .. name .. " " .. count)
			logging = logging .. " " .. name .. " "
			table.insert(items, name)
			slot = slot + 1
		end
		
		for i, item in ipairs(items) do
			p.print(item)
		end
		log("MIRTL " .. logging)
	end
end)
