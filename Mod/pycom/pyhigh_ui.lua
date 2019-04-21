-- get bob electronic back to where it belong
local targetsubgroup = "bob-electronic-components"
local ordercount = 1;
local function goback (Item, StackSize) 
	if data.raw.item[Item] then
		data.raw.item[Item].subgroup = targetsubgroup
		data.raw.item[Item].order = "a"..ordercount
		if data.raw.item[Item].stack_size then
			data.raw.item[Item].stack_size = StackSize
		end
		ordercount = ordercount + 1
	end
end
data:extend({
	{
		type = "item-subgroup",
		name = "bob-electronic-pyhigh-comp-a",
		group = data.raw["item-subgroup"]["bob-electronic-boards"].group,
		order = data.raw["item-subgroup"]["bob-electronic-boards"].order .. "a"
	},
	{
		type = "item-subgroup",
		name = "bob-electronic-pyhigh-comp-b",
		group = data.raw["item-subgroup"]["bob-electronic-boards"].group,
		order = data.raw["item-subgroup"]["bob-electronic-boards"].order .. "b"
	},
	{
		type = "item-subgroup",
		name = "bob-electronic-pyhigh-comp-c",
		group = data.raw["item-subgroup"]["bob-electronic-boards"].group,
		order = data.raw["item-subgroup"]["bob-electronic-boards"].order .. "c"
	},
		{
		type = "item-subgroup",
		name = "bob-electronic-pyhigh-comp-d",
		group = data.raw["item-subgroup"]["bob-electronic-boards"].group,
		order = data.raw["item-subgroup"]["bob-electronic-boards"].order .. "d"
	},
		{
		type = "item-subgroup",
		name = "bob-electronic-pyhigh",
		group = data.raw["item-subgroup"]["bob-electronic-boards"].group,
		order = data.raw["item-subgroup"]["bob-electronic-boards"].order .. "zz"
	}
})

for	i, name in pairs(momoTweak.ele.comp) do goback(name, 600) end


targetsubgroup = "bob-electronic-boards"
goback("formica", 200)
goback("phenolicboard", 400)
goback("fiberglass", 400)
for	i, name in pairs(momoTweak.ele.board) do goback(name, 600) end
for	i, name in pairs(momoTweak.ele.circuit) do goback(name, 600) end
for	i, name in pairs(momoTweak.ele.unit) do goback(name, 300) end

targetsubgroup = "bob-electronic-pyhigh"
goback("pcb1", 400)
goback("pcb2", 400)
goback("pcb3", 400)
goback("pcb3-2", 400)
goback("pcb4", 800)
goback("kondo-substrate", 800)
goback("kondo-core", 800)
goback("kondo-processor", 800)

targetsubgroup = "bob-electronic-pyhigh-comp-a"
goback("capacitor1", 400)
goback("capacitor2", 400)
goback("capacitor-core", 400)
goback("capacitor-termination", 400)
goback("capacitor3", 400)
goback("supercapacitor", 400)
goback("supercapacitor-core", 400)
goback("supercapacitor-shell", 400)

targetsubgroup = "bob-electronic-pyhigh-comp-b"
goback("resistor1", 500)
goback("resistor2", 500)
goback("resistor3", 500)
goback("paradiamatic-resistor", 500)
goback("diode", 400)
goback("diode3", 400)
goback("diode-core", 400)
goback("csle-diode", 400)

targetsubgroup = "bob-electronic-pyhigh-comp-c"
goback("inductor1", 300)
goback("inductor2", 300)
goback("high-flux-core", 300)
goback("inductor3", 300)
goback("fault-current-inductor", 300)
goback("superconductor", 300)
goback("sc-substrate", 300)
goback("superconductor-servomechanims", 300)


targetsubgroup = "bob-electronic-pyhigh-comp-d"

goback("transistor", 800)
goback("microchip", 800)
goback("processor-core", 800)
goback("processor", 400)
goback("intelligent-unit", 400)
goback("valve", 200)
goback("pi-josephson-junction", 400)
goback("var-josephson-junction", 400)



