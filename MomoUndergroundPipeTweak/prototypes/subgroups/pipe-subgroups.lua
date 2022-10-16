local MergeSubGroup = momoIRTweak.subgroup.MergeSubGroup

function momoPipeTweak.subgroups.Update()
	momoIRTweak.ChangeGroup("advanced-underground-piping", "logistics")
	
	momoIRTweak.subgroups["underground-buildings"].order = "aa-1"
	momoIRTweak.subgroups["pipes-to-ground"].order = "aa-2"
	momoIRTweak.subgroups["pipes-to-ground-t2"].order = "aa-3"
	momoIRTweak.subgroups["pipes-to-ground-t3"].order = "aa-4"
	MergeSubGroup({
		"swivel-joint","underground-mini-pump", "80-overflow-valve", "80-top-up-valve", "check-valve", "4-to-4-pipe"
	}, "underground-buildings")
	MergeSubGroup({
		"small-pipe-coupler", "underground-pipe-segment-t1",
		"one-to-one-forward-pipe", "one-to-two-perpendicular-pipe", "one-to-three-forward-pipe", "one-to-four-pipe",
		"underground-i-pipe", "underground-L-pipe", "underground-t-pipe", "underground-cross-pipe", 
		}, 
	"pipes-to-ground")
	
	MergeSubGroup({
		"medium-pipe-coupler", "underground-pipe-segment-t2", 
		"one-to-one-forward-t2-pipe", "one-to-two-perpendicular-t2-pipe", "one-to-three-forward-t2-pipe", "one-to-four-t2-pipe",
		"underground-i-t2-pipe", "underground-L-t2-pipe", "underground-t-t2-pipe", "underground-cross-t2-pipe"
		}, 
	"pipes-to-ground-t2")
	
	MergeSubGroup({
		"large-pipe-coupler", "underground-pipe-segment-t3",
		"one-to-one-forward-t3-pipe", "one-to-two-perpendicular-t3-pipe", "one-to-three-forward-t3-pipe", "one-to-four-t3-pipe",
		"underground-i-t3-pipe", "underground-L-t3-pipe", "underground-t-t3-pipe", "underground-cross-t3-pipe"
		},
	"pipes-to-ground-t3")
	
	if momoPipeTweak.mods.SpaceEx then
		local SetSubgroup = momoIRTweak.recipe.SetSubgroup
		SetSubgroup("underground-space-pump", "underground-buildings", "zz-1")
		SetSubgroup("80-overflow-space-valve", "underground-buildings", "zz-2")
		SetSubgroup("80-top-up-space-valve", "underground-buildings", "zz-3")
		SetSubgroup("check-space-valve", "underground-buildings", "zz-4")
		
		momoIRTweak.CreateSubgroup("pipes-to-ground-t4", momoIRTweak.subgroups["pipes-to-ground-t3"].order .. "a", "logistics")
		
		MergeSubGroup({
			"space-pipe-coupler", "underground-pipe-segment-space", 
			"one-to-one-forward-space-pipe", "one-to-two-perpendicular-space-pipe", "one-to-three-forward-space-pipe", "one-to-four-space-pipe",
			"underground-i-space-pipe", "underground-L-space-pipe", "underground-t-space-pipe", "underground-cross-space-pipe"},
		"pipes-to-ground-t4")
	end

end

function momoPipeTweak.subgroups.FinalFix()
	
end

