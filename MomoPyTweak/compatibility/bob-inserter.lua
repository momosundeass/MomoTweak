function momoPyTweak.compatibility.bobInserter()
	if (settings.startup["momo-removeLongInserter"].value) then
		momoIRTweak.technology.RemoveAllUnlockEffect({"long-handed-inserter", "long-handed-inserter-2"})
	end
end