require("MomoLib.data-init")
require("prototypes.gem-data")
require("prototypes.artifact")

MomoLib.GetItem("bob-sodium-hydroxide", function(p) p.auto_recycle = false end)
MomoLib.GetItem("bob-calcium-chloride", function(p) p.auto_recycle = false end)
MomoLib.GetItem("bob-ammonium-chloride", function(p) p.auto_recycle = false end)
MomoLib.GetItem("bob-fusion-catalyst", function(p) p.auto_recycle = false end)

MomoLib.GetItem("depleted-uranium-fuel-cell", function(p) p.auto_recycle = false end)
MomoLib.GetItem("bob-depleted-thorium-fuel-cell", function(p) p.auto_recycle = false end)
MomoLib.GetItem("bob-depleted-deuterium-fuel-cell", function(p) p.auto_recycle = false end)