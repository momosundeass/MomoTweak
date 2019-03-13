if not momoTweak then momoTweak = {} end

IsLoadBobextended = true

require("function")
require("const-name")
require("prototypes.sci.item")

if IsLoadBobextended then
	require("prototypes.bobextended.bobextended-data")
end
-- check for aai before all burner ass
momoTweak.burner = "assembling-machine-0"
if data.raw["assembling-machine"]["burner-assembling-machine"] then
	momoTweak.burner = "burner-assembling-machine"
else
	require("prototypes.burner-assembler")
end

data:extend({
{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
  }
})