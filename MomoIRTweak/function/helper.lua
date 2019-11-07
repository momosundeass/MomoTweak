momoIRTweak.dumpText = ""
momoIRTweak.indentAmount = 0

function momoIRTweak.Log(str)
	log("MIRTL => " .. str)
end

function momoIRTweak.GetName(obj) 
	if (type(obj) == "table") then
		return obj.name
	end
	return obj
end

function momoIRTweak.PrintTable(var)
	if (type(var) == "table") then
		for k, v in pairs(var) do 
			momoIRTweak.indentAmount = momoIRTweak.indentAmount + 1
			local indent = ""
			for i=1, momoIRTweak.indentAmount do 
				indent = indent .. "   "
			end
			momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n" .. indent .. tostring(k) .. ":"
			momoIRTweak.PrintTable(v)
			momoIRTweak.indentAmount = momoIRTweak.indentAmount - 1
		end
	else
		momoIRTweak.dumpText = momoIRTweak.dumpText .. " " .. tostring(var) 
	end
end
