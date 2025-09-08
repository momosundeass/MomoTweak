local tech = MomoLib.technology.Clone("mining-productivity-3", "mining-productivity-vanilla")
:PRE{"mining-productivity-3"}:EFFECTAMOUNT(0.05)
tech:Extend()
MomoLib.technology.Infinity(tech, "(L^(3+"..MomoLib.InfiniteTechnologyPower.."))*200")

tech = MomoLib.technology.Clone("worker-robots-storage-3", "worker-robots-storage-infinite")
tech:PRE{"worker-robots-storage-3"}
tech:Extend()
MomoLib.technology.Infinity(tech, "5000+((L^"..MomoLib.HardInfiniteTechnologyPower..")*600)")

local labProd = 0.05
tech = MomoLib.technology.Clone("kr-ai-core", "lab-productivity-vanilla"):PRE("research-speed-6")
:EFFECTS{{type="laboratory-productivity", modifier=labProd}}
tech:Extend()
MomoLib.technology.Infinity(tech, "2000+((L^"..MomoLib.HardInfiniteTechnologyPower..")*1000)")
local icon = MomoLib.Graphics("research-productivity.png", 256)
MomoLib.icon.Assign(tech, icon)

tech = MomoLib.technology.Clone("kr-matter-cube", "lab-productivity"):PRE("kr-matter-cube")
:EFFECTS{{type="laboratory-productivity", modifier=labProd}}
tech:Extend()
MomoLib.technology.Infinity(tech, "2000+((L^"..MomoLib.HardInfiniteTechnologyPower..")*1000)")
MomoLib.icon.Assign(tech, icon)

tech = MomoLib.technology.Clone("artillery", "artillery-range-vanilla")
:EFFECTS{{type="artillery-range", modifier=0.15}}
:ADDINGREDIENT(MomoLib.MakeResearchIngredient(MomoLib.itemNames.purpleSci))
tech:Extend()
MomoLib.technology.Infinity(tech, "2000+((L^"..MomoLib.HardInfiniteTechnologyPower..")*2000)")
MomoLib.icon.Assign(tech, MomoLib.icon.FromPrototype(data.raw.technology["artillery-shell-range-1"]))

-- weapon-shooting-speed-6
-- laser-weapons-damage-6