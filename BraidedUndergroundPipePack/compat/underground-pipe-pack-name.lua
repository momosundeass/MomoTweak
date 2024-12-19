local p1 = {
	"one-to-one-forward-pipe",
	"one-to-two-perpendicular-pipe",
	"one-to-three-forward-pipe",
	"one-to-four-pipe"
}
local u1 = {
	"underground-i-pipe",
	"underground-L-pipe",
	"underground-t-pipe",
	"underground-cross-pipe"
}
local p2 = {
	"one-to-one-forward-t2-pipe",
	"one-to-two-perpendicular-t2-pipe",
	"one-to-three-forward-t2-pipe",
	"one-to-four-t2-pipe"
}
local u2 = {
	"underground-i-t2-pipe",
	"underground-L-t2-pipe",
	"underground-t-t2-pipe",
	"underground-cross-t2-pipe"
}
local p3 = {
	"one-to-one-forward-t3-pipe",
	"one-to-two-perpendicular-t3-pipe",
	"one-to-three-forward-t3-pipe",
	"one-to-four-t3-pipe"
}
local u3 = {
	"underground-i-t3-pipe",
	"underground-L-t3-pipe",
	"underground-t-t3-pipe",
	"underground-cross-t3-pipe"
}
local t1 = ""
local t2 = "-t2"
local t3 = "-t3"
local ts = {t1, t2, t3}
local dirs = {"forward", "left", "right", "reverse"}
local function Get1To1(dir, tier) return "one-to-one-"..dir..tier.."-pipe" end

local to2Dirs = {
	"parallel",
	"parallel-secondary",
	"perpendicular",
	"perpendicular-secondary",
	"L-RR",
	"L-RL",
	"L-FL",
	"L-FR",
}
local function Get1To2(dir, tier) return "one-to-two-"..dir..tier.."-pipe" end
local function Get1To3(dir, tier) return "one-to-three-"..dir..tier.."-pipe" end

local name = {}

name.t1_1To1 = {}
name.t2_1To1 = {}
name.t3_1To1 = {}
name.t1_1To2 = {}
name.t2_1To2 = {}
name.t3_1To2 = {}
name.t1_1To3 = {}
name.t2_1To3 = {}
name.t3_1To3 = {}

for	_, dir in pairs(dirs) do
	table.insert(name.t1_1To1, Get1To1(dir, t1))
	table.insert(name.t2_1To1, Get1To1(dir, t2))
	table.insert(name.t3_1To1, Get1To1(dir, t3))
	
	table.insert(name.t1_1To3, Get1To3(dir, t1))
	table.insert(name.t2_1To3, Get1To3(dir, t2))
	table.insert(name.t3_1To3, Get1To3(dir, t3))
end

for _, to2Dir in pairs(to2Dirs) do
	table.insert(name.t1_1To2, Get1To2(to2Dir, t1))
	table.insert(name.t2_1To2, Get1To2(to2Dir, t2))
	table.insert(name.t3_1To2, Get1To2(to2Dir, t3))
end

name.t1 = MomoLib.Merge({u1, p1, name.t1_1To1, name.t1_1To2, name.t1_1To3})
name.t2 = MomoLib.Merge({u2, p2, name.t2_1To1, name.t2_1To2, name.t2_1To3})
name.t3 = MomoLib.Merge({u3, p3, name.t3_1To1, name.t3_1To2, name.t3_1To3})

return name