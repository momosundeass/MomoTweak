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

local dir = {"forward", "left", "right", "reverse"}
local function Get3Pipe(varient, tier) return "one-to-three-"..varient..tier.."-pipe" end
local function Get1Pipe(varient, tier) return "one-to-one-"..varient..tier.."-pipe" end

local uFromTo = {
	[u1[1]] = u2[1],
	[u1[2]] = u2[2],
	[u1[3]] = u2[3],
	[u1[4]] = u2[4],
	[u2[1]] = u3[1],
	[u2[2]] = u3[2],
	[u2[3]] = u3[3],
	[u2[4]] = u3[4],
	
	--- one to four
	[p1[4]] = p2[4],
	[p2[4]] = p3[4],
	
	--- one to three 
	[Get3Pipe(dir[1], "")]    = Get3Pipe(dir[1], "-t2"),
	[Get3Pipe(dir[2], "")]    = Get3Pipe(dir[2], "-t2"),
	[Get3Pipe(dir[3], "")]    = Get3Pipe(dir[3], "-t2"),
	[Get3Pipe(dir[4], "")]    = Get3Pipe(dir[4], "-t2"),
	[Get3Pipe(dir[1], "-t2")] = Get3Pipe(dir[1], "-t3"),
	[Get3Pipe(dir[2], "-t2")] = Get3Pipe(dir[2], "-t3"),
	[Get3Pipe(dir[3], "-t2")] = Get3Pipe(dir[3], "-t3"),
	[Get3Pipe(dir[4], "-t2")] = Get3Pipe(dir[4], "-t3"),
	
	-- one to one
	[Get1Pipe(dir[1], "")]    = Get1Pipe(dir[1], "-t2"),
	[Get1Pipe(dir[2], "")]    = Get1Pipe(dir[2], "-t2"),
	[Get1Pipe(dir[3], "")]    = Get1Pipe(dir[3], "-t2"),
	[Get1Pipe(dir[4], "")]    = Get1Pipe(dir[4], "-t2"),
	[Get1Pipe(dir[1], "-t2")] = Get1Pipe(dir[1], "-t3"),
	[Get1Pipe(dir[2], "-t2")] = Get1Pipe(dir[2], "-t3"),
	[Get1Pipe(dir[3], "-t2")] = Get1Pipe(dir[3], "-t3"),
	[Get1Pipe(dir[4], "-t2")] = Get1Pipe(dir[4], "-t3"),
}

local pipe2var = {
	"parallel",
	"parallel-secondary",
	"perpendicular",
	"perpendicular-secondary",
	"L-RR",
	"L-RL",
	"L-FL",
	"L-FR",
}
local function Get2Pipe(varient, tier) return "one-to-two-"..varient..tier.."-pipe" end
for _, var in pairs(pipe2var) do
	local pipe = Get2Pipe(var, "")
	local nextPipe = Get2Pipe(var, "-t2")
	uFromTo[pipe] = nextPipe
	
	pipe = Get2Pipe(var, "-t2")
	nextPipe = Get2Pipe(var, "-t3")
	uFromTo[pipe] = nextPipe
end

for from, to in pairs(uFromTo) do
	data.raw["pipe-to-ground"][from].next_upgrade = to
end
