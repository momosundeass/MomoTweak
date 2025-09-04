local s = MomoLib.itemNames
local profiles = {
    {have = s.greenSci, add = 80, increases = {
        {target = s.redSci, add = 1}
    }},
    {have = s.blackSci, add = 100, increases = {
        {target = s.redSci, add = 2},
        {target = s.greenSci, add = 1},
    }},
    {have = s.blueSci, add = 1000, increases = {
        {target = s.redSci, add = 6},
        {target = s.greenSci, add = 1},
        {target = s.blackSci, add = 1},
    }},
    {have = s.purpleSci, add = 5000, increases = {
        {target = s.redSci, add = 8},
        {target = s.greenSci, add = 6},
        {target = s.blackSci, add = 2},
        {target = s.blueSci, add = 1},
    }},
    {have = s.yellowSci, add = 5000, increases = {
        {target = s.redSci, add = 8},
        {target = s.greenSci, add = 5},
        {target = s.blackSci, add = 3},
        {target = s.blueSci, add = 2},
    }},
    {have = s.whiteSci, add = 10000, increases = {
        {target = s.redSci, add = 12},
        {target = s.greenSci, add = 8},
        {target = s.blackSci, add = 6},
        {target = s.blueSci, add = 6},
        {target = s.purpleSci, add = 3},
        {target = s.yellowSci, add = 3},
    }},
    {have = s.matterSci, add = 10000, increases = {
        {target = s.purpleSci, add = 5},
        {target = s.yellowSci, add = 5},
        {target = s.whiteSci, add = 11},
    }},
    {have = s.advSci, add = 20000, increases = {
        {target = s.purpleSci, add = 11},
        {target = s.yellowSci, add = 11},
        {target = s.whiteSci, add = 15},
        {target = s.matterSci, add = 3},
    }},
    {have = s.singularitySci, add = 30000, increases = {
        {target = s.purpleSci, add = 16},
        {target = s.yellowSci, add = 16},
        {target = s.whiteSci, add = 24},
        {target = s.matterSci, add = 6},
        {target = s.advSci, add = 3},
    }},
}

for i, tech in pairs(data.raw.technology) do
    if not tech.unit then goto continue end
    for _, p in ipairs(profiles) do
        local have = MomoLib.technology.GetIngredient(tech, p.have)
        if have then
            if tech.unit.count then
                tech.unit.count = tech.unit.count + (have[2] * p.add)
            end
            for _, inc in ipairs(p.increases) do
                local target = MomoLib.technology.GetIngredient(tech, inc.target)
                if target then target[2] = target[2] + inc.add end
            end

        end
    end
    ::continue::
end
