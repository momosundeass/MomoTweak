local function ProcessSubgroup(subgroupToItems)
	local order = 1
	for _, i in pairs(subgroupToItems.items) do
		MomoLib.GetItem(i, function (p) 
			MomoLib.subgroup.ChangeItem(p.name, subgroupToItems.subgroup, "a" .. order, true)
			order = order + 1
		end)
	end	
end

ProcessSubgroup {
	subgroup = "bob-logistic-tier-0", items = {
	"bob-basic-transport-belt",
	"transport-belt",
	"fast-transport-belt",
	"express-transport-belt",
	"bob-turbo-transport-belt",
	"bob-ultimate-transport-belt"
}} 
ProcessSubgroup {
	subgroup = "bob-logistic-tier-1", items = {
	"bob-basic-underground-belt",
	"underground-belt",
	"fast-underground-belt",
	"express-underground-belt",
	"bob-turbo-underground-belt",
	"bob-ultimate-underground-belt"
}} 
ProcessSubgroup {
	subgroup = "bob-logistic-tier-2", items = {
	"bob-basic-splitter",
	"splitter",
	"fast-splitter",
	"express-splitter",
	"bob-turbo-splitter",
	"bob-ultimate-splitter"
}} 
ProcessSubgroup {
	subgroup = "bob-logistic-tier-3", items = {
	"bob-steam-inserter",
	"burner-inserter",
	"inserter",
	"long-handed-inserter",
	"fast-inserter",
	"bob-turbo-inserter",
	"bob-express-inserter"
}} 
ProcessSubgroup {
	subgroup = "bob-logistic-tier-4", items = {
	"bob-red-bulk-inserter",
	"bulk-inserter",
	"bob-turbo-bulk-inserter",
	"bob-express-bulk-inserter"
}} 
ProcessSubgroup {
	subgroup = "bob-logistic-tier-5", items = {
	"aai-basic-loader",
	"aai-loader",
	"aai-fast-loader",
	"aai-express-loader",
	"aai-turbo-loader",
	"aai-ultimate-loader",
}} 

