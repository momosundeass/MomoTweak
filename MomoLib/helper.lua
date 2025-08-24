if not MomoLib then MomoLib = {} end
MomoLib.helper = {}
local dataUtil = require("__flib__.data-util")
local tableUtil = require("__flib__.table")

function MomoLib.ClonePrototype(original, newName, modifier)
	local newTable = dataUtil.copy_prototype(original, newName, false)
	if modifier ~= nil then
		modifier(newTable)
	end
	return newTable
end

function MomoLib.Count(tbl)
	local count = 0
	for _ in pairs(tbl) do
		count = count + 1
	end
	return count
end

function MomoLib.ToTable(tblOrObj)
	if type(tblOrObj) == "table" then
		return tblOrObj
	end
	
	return {tblOrObj}
end

function MomoLib.IsArray(tblOrArr)
  local i = 0
  if type(tblOrArr) ~= "table" then return false end
  for _ in pairs(tblOrArr) do
      i = i + 1
      if tblOrArr[i] == nil then return false end
  end
  return true
end

function MomoLib.ToString(obj)
	if obj == nil then return "Object = nil" end
	if type(obj) == "table" then return MomoLib.TableToString(obj) end
	return type(obj).. ":" .. tostring(obj)
end

function MomoLib.TableToString(tbl)
	if tbl == nil then return "Table = nil" end
	local str = "(".. #tbl .. "Es)>"
	for i, e in pairs(tbl) do
		str = str .. "[" .. tostring(i) .. "=" .. MomoLib.ToString(e) .. "] "
	end
	return str
end

function MomoLib.Merge(arrs)
	local result = {}
	for _, a in pairs(arrs) do
		for _, e in pairs(a) do
			table.insert(result, e)
		end
	end
	return result
end

function MomoLib.ShallowCopy(tbl)
	local t2 = {}
	for k,v in pairs(tbl) do
		t2[k] = v
	end
	return t2
end

function MomoLib.DeepCopy(orig)
	local orig_type = type(orig)
	if orig_type == 'table' then
		local copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[MomoLib.DeepCopy(orig_key)] = MomoLib.DeepCopy(orig_value)
		end
		setmetatable(copy, MomoLib.DeepCopy(getmetatable(orig)))
		return copy
	end
	local copy = orig
	return copy
end

function MomoLib.First(tbl)
	for _, e in pairs(tbl) do
		return e
	end
end

function MomoLib.Foreach(tbl, callback)
	if type(tbl) ~= "table" then return end
	tableUtil.for_each(tbl, callback)
end

function MomoLib.ContainKey(tbl, key)
	return tbl[key] ~= nil
end

function MomoLib.Extend(tbl, keyValuePairs)
	if type(keyValuePairs) ~= "table" then
		error("keyValuePairs must be table.")
	end
	
	if #keyValuePairs == 2 then
		tbl[keyValuePairs[1]] = keyValuePairs[2]
	return end
	
	if MomoLib.IsArray(keyValuePairs) then
		for _, kvp in pairs(keyValuePairs) do
			tbl[kvp[1]] = kvp[2]
		end
	return end
	
	error("keyValuePairs must be table with 2 element or array of paired key-value")
end

function table.rpairs(t)
    local i = #t + 1
    return function()
        i = i - 1
        if i > 0 then
            return i, t[i]
        end
    end
end

return MomoLib