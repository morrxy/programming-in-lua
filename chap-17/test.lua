local count = 0

local mt = { __gc = function () count = count - 1 end }
local a = {}

a[1] = setmetatable({}, mt)

collectgarbage()
print(collectgarbage"count" * 1024, count)
a = nil
collectgarbage()
print(collectgarbage"count" * 1024, count)
collectgarbage()
print(collectgarbage"count" * 1024, count)
