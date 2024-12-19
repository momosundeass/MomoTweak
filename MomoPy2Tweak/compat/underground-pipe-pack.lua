local isPyBraided = mods["pyindustry"] and settings.startup["py-braided-pipes"].value

local name = require("compat/underground-pipe-pack-name")

local pipeCats = { "pipe-pack-1", "pipe-pack-2", "pipe-pack-3" }
if isPyBraided then pipeCats = { "pipe", "niobium-pipe", "ht-pipes" } end


function ChangeFluidBoxesCategory(entities, undergroundCategory)
	for _, e in pairs(entities) do
		local en = data.raw["pipe"][e] or data.raw["pipe-to-ground"][e] or data.raw["pump"][e]
		if not en then goto continue end
		local fb = en.fluid_box
		if not fb then goto continue end
		
		for i, c in pairs(fb.pipe_connections) do
			if c.connection_type == nil or c.connection_type == "normal" then
				if isPyBraided then
					fb.pipe_connections[i] = MomoLib.ShallowCopy(c)
					fb.pipe_connections[i].connection_category = undergroundCategory
				end
			elseif c.connection_type == "underground" then
				c.connection_category = undergroundCategory
			end
		end
		
		en.next_upgrade = ""
		::continue::
	end
end

ChangeFluidBoxesCategory(name.t1, pipeCats[1])
ChangeFluidBoxesCategory(name.t2, pipeCats[2])
ChangeFluidBoxesCategory(name.t3, pipeCats[3])

ChangeFluidBoxesCategory({"underground-mini-pump"}, pipeCats[1])
ChangeFluidBoxesCategory({"underground-mini-pump-t2"}, pipeCats[2])
ChangeFluidBoxesCategory({"underground-mini-pump-t3"}, pipeCats[3])