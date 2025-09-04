local func = require("MomoLib.setting")
func.CreateBoolSetting("momo-hardcore-storage", true)
func.CreateBoolSetting("momo-super-quality", true)

-- TODO: Hide potential conflict settings

func.Hide("aai-fast-motor-crafting", false)
func.Hide("aai-wide-drill", false)
func.Hide("aai-fuel-processor", true)

func.Hide("k11-advanced-centrifuge-base-productivity", false)

-- k2
func.Hide("kr-loaders", true)
if mods["aai-containers"] then 
    func.Hide("kr-containers", false)
else
    func.Hide("kr-containers", true)
end

-- ev
local table = {
    data.raw["bool-setting"],
    data.raw["int-setting"],
    data.raw["double-setting"],
    data.raw["string-setting"]
}
for _, data in pairs(table) do
    for _, s in pairs(data) do
        local e, _ = string.find(s.name, "ev-")
        local b, _ = string.find(s.name, "bz-")
        if e == 1 or b == 1 then
            func.Hide(s.name, s.default_value)
        end
    end
end
