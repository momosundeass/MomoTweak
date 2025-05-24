local function AssignSubgroup(items, subgroup)
	local order = "a"
	for _, i in pairs(items) do
		MomoLib.subgroup.ChangeItem(i, subgroup, "upp-" .. order)
		MomoLib.subgroup.ChangeRecipe(i, subgroup, "upp-" .. order)
		order = string.char(string.byte(order) + 1)
	end
end

MomoLib.ChangeGroup("advanced-underground-piping", "logistics")
MomoLib.subgroups["underground-buildings"].order = "aa-1"
MomoLib.subgroups["pipes-to-ground"].order = "aa-2"
MomoLib.subgroups["pipes-to-ground-t2"].order = "aa-3"
MomoLib.subgroups["pipes-to-ground-t3"].order = "aa-4"
local undergroundBuildings = {
	"barrel-machine-mk01", "py-check-valve", "pump", "swivel-joint","underground-mini-pump","underground-mini-pump-t2","underground-mini-pump-t3","4-to-4-pipe"
}
AssignSubgroup(undergroundBuildings, "underground-buildings")
local ptgs1 = {
	"pipe", "pipe-to-ground", "small-pipe-coupler", "underground-pipe-segment-t1",
	"one-to-one-forward-pipe", "one-to-two-perpendicular-pipe", "one-to-three-forward-pipe", "one-to-four-pipe",
	"underground-i-pipe", "underground-L-pipe", "underground-t-pipe", "underground-cross-pipe", 
	}
AssignSubgroup(ptgs1, "pipes-to-ground")

local ptgs2 = {
	"niobium-pipe", "niobium-pipe-to-ground", "medium-pipe-coupler", "underground-pipe-segment-t2", 
	"one-to-one-forward-t2-pipe", "one-to-two-perpendicular-t2-pipe", "one-to-three-forward-t2-pipe", "one-to-four-t2-pipe",
	"underground-i-t2-pipe", "underground-L-t2-pipe", "underground-t-t2-pipe", "underground-cross-t2-pipe"
	}
AssignSubgroup(ptgs2, "pipes-to-ground-t2")

local ptgs3 = {
	"ht-pipes", "ht-pipes-to-ground", "large-pipe-coupler", "underground-pipe-segment-t3",
	"one-to-one-forward-t3-pipe", "one-to-two-perpendicular-t3-pipe", "one-to-three-forward-t3-pipe", "one-to-four-t3-pipe",
	"underground-i-t3-pipe", "underground-L-t3-pipe", "underground-t-t3-pipe", "underground-cross-t3-pipe"
	}
AssignSubgroup(ptgs3, "pipes-to-ground-t3")

