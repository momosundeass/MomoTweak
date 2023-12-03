function momoPyTweak.compatibility.BobInserter()
	if (settings.startup["momo-bobInserter"].value) then
		momoIRTweak.technology.RemoveAllUnlockEffect("long-handed-inserter")
	end
end

function momoPyTweak.finalFixes.SmartInserter()
	if (settings.startup["momo-smartInserter"].value) then
		local AddPreq = momoIRTweak.technology.AddPrerequire
		local SetPreq = momoIRTweak.technology.SetPrerequire
		
		AddPreq("si-unlock-offsets", "si-unlock-cross")
		AddPreq("si-unlock-offsets", "solder-mk01")
		
		AddPreq("si-unlock-x-diagonals", "rare-earth-tech")
		AddPreq("si-unlock-all-diagonals", "military-3")
		
		SetPreq("si-unlock-range-1", {"logistics"})
		AddPreq("si-unlock-range-2", "si-unlock-x-diagonals")		
	end
end