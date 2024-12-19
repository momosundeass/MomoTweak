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

function MomoLib.ToTable(tblOrObj)
	if type(tblOrObj) == "table" then
		return tblOrObj
	end
	
	return {tblOrObj}
end

function MomoLib.IsArray(tblOrArr)
  local i = 0
  for _ in pairs(tblOrArr) do
      i = i + 1
      if tblOrArr[i] == nil then return false end
  end
  return true
end

function MomoLib.TableToString(tbl)
	local str = #tbl .. " element > "
	for i, e in pairs(tbl) do
		str = str .. "[" .. i .. ":" .. e .. "] "
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

function MomoLib.Foreach(tbl, callback)
	tableUtil.for_each(tbl, callback)
end

function MomoLib.ContainKey(tbl, key)
	return tbl[key] ~= nil
end
