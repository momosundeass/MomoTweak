function momoPyTweak.updates.Stacksize() 
	local function IncreaseStackSize(items, amount_multiplyer)
		for _, i in pairs(items) do
			momoPyTweak.functions.ValidateItem(i, function(prot)
				prot.stack_size = prot.stack_size * amount_multiplyer
		end)
	end
	end
	local belts = {
	"transport-belt",
	"fast-transport-belt",
	"express-transport-belt",
	"ultra-fast-belt",
	"extreme-fast-belt",
	"ultra-express-belt",
	"extreme-express-belt",
	"ultimate-belt"
}

	local inserters = {
		"burner-inserter",
		"inserter", 
		"long-handed-inserter",
		"fast-inserter", 
		"filter-inserter", 
		"stack-inserter", 
		"stack-filter-inserter"
	}

	local pipes = {
		"pipe",
		"niobium-pipe",
		"ht-pipes"
	}


	IncreaseStackSize(belts, 2)
	IncreaseStackSize(inserters, 2)
	IncreaseStackSize(pipes, 2)
end