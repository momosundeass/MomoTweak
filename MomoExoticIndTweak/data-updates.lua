if (momo.settings.science) then
	local sc = require("prototypes.science")
	sc.Updates()
end

if (momo.settings.inserter and momo.mods.bobinserter) then
	local sc = require("compat.inserter")
	sc.Updates()
end