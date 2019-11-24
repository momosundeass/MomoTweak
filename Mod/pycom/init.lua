

if mods["pycoalprocessing"] then
	momoTweak.py.coal = true
	if (not mods["PyCoalTBaA"]) then
		error ('using "Pyanodons" without "PyCoal Touched By an Angel" are not allow')
	end
end
if mods["pyfusionenergy"] then
	momoTweak.py.fusion = true
end
if mods["pyhightech"] then
	momoTweak.py.ht = true
end

-- py compatibility are close for now
local loadpycom = false

momoTweak.py.coal = loadpycom
momoTweak.py.fusion = loadpycom
momoTweak.py.ht = loadpycom