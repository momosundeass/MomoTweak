local funcs = {}
local opFunc = {
        ["add"] = function (n1, n2) return n1 + n2 end,
        ["sub"] = function (n1, n2) return n1 - n2 end,
        ["mul"] = function (n1, n2) return n1 * n2 end,
        ["div"] = function (n1, n2) return n1 / n2 end
    }

function  funcs.Add(v1, v2)
    return funcs.VecOperation(v1, v2, "add")
end

function funcs.Mul(v1, v2)
     return funcs.VecOperation(v1, v2, "mul")
end

---@param operation string
---| "'add'"
---| "'sub'"
---| "'mul'"
---| "'div'"
function funcs.VecOperation(v1, v2, operation)
    local op = opFunc[operation]
    local result = {op(v1[1], v2[1]), op(v1[2], v2[2])}
    result[3] = v1[3] or v2[3]
    if v1[3] and v2[3] then
        result[3] = op(v1[3], v2[3])
    end
    return result
end

MomoLib.vec = funcs