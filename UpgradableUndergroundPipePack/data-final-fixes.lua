if (settings.startup["momo-pipe-disabled-valve"]) then
	momoIRTweak.technology.RemoveUnlockEffect("advanced-underground-piping", "80-overflow-valve")
	momoIRTweak.technology.RemoveUnlockEffect("advanced-underground-piping", "80-top-up-valve")
	momoIRTweak.technology.RemoveUnlockEffect("advanced-underground-piping", "check-valve")
end

require("prototypes.upgrade")