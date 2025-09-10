
-- filtration
MomoLib.machine.FluidBoxes(MomoLib.itemNames.filtration.n, {
    MomoLib.machine.FluidBox({-3, 0}, "input", defines.direction.west, MomoLib.machine.PipeEmptyPictures()),
    MomoLib.machine.FluidBox({3, 0}, "input", defines.direction.east, MomoLib.machine.PipeEmptyPictures()),
}, true)

-- MomoLib.machine.FluidBoxes(MomoLib.itemNames.advCentrifuge.n, {
--     -- MomoLib.machine.FluidBox({0, -3})
-- })