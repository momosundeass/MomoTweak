if not momoIRTweak then momoIRTweak = {} end

momoIRTweak.modName = ""
momoIRTweak.dumpText = ""
momoIRTweak.dumpStack = {""}

momoIRTweak.indentAmount = 0

function momoIRTweak.Init(modName)
	momoIRTweak.modName = modName
	momoIRTweak.Log("Init mod name : " .. modName)
end

function momoIRTweak.Log(str)
	log("MomoIRTweak => " .. str)
end

function momoIRTweak.GetName(obj) 
	if (type(obj) == "table") then
		return obj.name
	end
	return obj
end

function momoIRTweak.DeepCopy(orig)
	local orig_type = type(orig)
	if orig_type == 'table' then
		local copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[deepcopy(orig_key)] = deepcopy(orig_value)
		end
		setmetatable(copy, deepcopy(getmetatable(orig)))
		return copy
	end
	local copy = orig
	return copy
end

function momoIRTweak.DumpTable(_table)
	if (type(_table) == "table") then
		for k, v in pairs(_table) do 
			momoIRTweak.indentAmount = momoIRTweak.indentAmount + 1
			local indent = ""
			for i=1, momoIRTweak.indentAmount do 
				indent = indent .. "   "
			end
			momoIRTweak.ConcatStringToDumpText("\n" .. indent .. tostring(k) .. ":")
			momoIRTweak.DumpTable(v)
			momoIRTweak.indentAmount = momoIRTweak.indentAmount - 1
		end
	else
		momoIRTweak.ConcatStringToDumpText(" " .. tostring(_table)) 
	end
end

function momoIRTweak.ConcatStringToDumpText(str)
	momoIRTweak.dumpText = momoIRTweak.dumpText .. str
end

function momoIRTweak.AddStringToDumpStack(str)
	table.insert(momoIRTweak.dumpStack, str)
	for i = #momoIRTweak.dumpStack -1, 1, -1 do
		if string.len(momoIRTweak.dumpStack[i]) > string.len(momoIRTweak.dumpStack[i + 1]) then
			break
		end
		momoIRTweak.dumpStack[i] = momoIRTweak.dumpStack[i] .. table.remove(momoIRTweak.dumpStack)
	end
end

function momoIRTweak.PrintDump()
	momoIRTweak.Log(tostring(momoIRTweak.dumpText))
	momoIRTweak.dumpText = ""
end

function momoIRTweak.PrintTable(_table)
	momoIRTweak.DumpTable(_table)
	momoIRTweak.PrintDump()
end

momoIRTweak.Log("Helper load completed")