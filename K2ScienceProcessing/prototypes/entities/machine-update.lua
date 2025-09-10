
-- filtration
MomoLib.machine.FluidBoxes(MomoLib.itemNames.filtration.n, {
    MomoLib.machine.FluidBox({-3, 0}, "input", defines.direction.west, {picture=MomoLib.machine.PipeEmptyPictures()}),
    MomoLib.machine.FluidBox({3, 0}, "input", defines.direction.east, {picture=MomoLib.machine.PipeEmptyPictures()}),
}, true)

local y = 3.125
local x = 2
MomoLib.machine.FluidBoxes(MomoLib.itemNames.advCentrifuge.n, {
    MomoLib.machine.FluidBox({-x, -y}, "input", defines.direction.north, {drawOrder=nil}),
    MomoLib.machine.FluidBox({x, y}, "input", defines.direction.south, {drawOrder=nil}),
    MomoLib.machine.FluidBox({-y, x}, "output", defines.direction.west, {drawOrder=nil}),
    MomoLib.machine.FluidBox({y, -x}, "output", defines.direction.east, {drawOrder=nil})
})
