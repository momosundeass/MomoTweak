if (momoTweak.py.coal) then
	if (momoTweak.mods.sct) then
		bobmods.lib.tech.remove_prerequisite("coal-processing-3", "chemical-science-pack")
		data.raw.tool[momoTweak.sci1].icon_size = 32
		data.raw.tool[momoTweak.sci2].icon_size = 32
		data.raw.tool[momoTweak.sci3].icon_size = 32
		
		if (momoTweak.py.fusion) then
			data.raw.tool[momoTweak.sciProduction].icon_size = 32
		end
		
		if (momoTweak.py.ht) then
			data.raw.tool[momoTweak.sciTech].icon_size = 32
		end
	end
end

if (momoTweak.py.ht) then
	-- still not support py.
	-- require("pyhigh_ui")
end