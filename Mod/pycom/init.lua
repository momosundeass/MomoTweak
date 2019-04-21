momoTweak.py = {}

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
