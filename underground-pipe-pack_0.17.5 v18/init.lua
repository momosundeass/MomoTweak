local init = {}
local versionsTable = {
    ["0.16.64"] = true,
    ["0.16.63"] = true,
    ["0.16.62"] = true,
    ["0.16.61"] = true,
    ["0.16.60"] = true,
    ["0.16.59"] = true,
    ["0.16.58"] = true,
    ["0.16.57"] = true
}
function init.mod_init(modData)
    global.correctTable = nil
    if modData
        and modData.mod_changes["underground-pipe-pack"]
        and modData.mod_changes["underground-pipe-pack"].old_version
    then
        if versionsTable[modData.mod_changes["underground-pipe-pack"].old_version] then
            game.print("Pipe clamp and highlight tool have been migrated to a new mod 'PickerPipeTools'")
            game.print("Download 'PickerPipeTools' from the mod portal to keep clamped pipes and more tools")
        end
    end
end
return init
