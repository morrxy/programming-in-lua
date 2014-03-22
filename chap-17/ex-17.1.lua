--[[

Exercise17.1: Write an experiment to determine whether Lua actually
implements ephemeron tables. (Remember to call collectgarbage￼to force a
garbage collection cycle.) If possible, try your code both in Lua 5.1 and
in Lua 5.2 to see the difference.

]]

local mem = {}
setmetatable(mem, {__mode = "k"})
function factory(o)
  local res = mem[o]
  if not res then
    res = function() return o end
    mem[o] = res
  end
  return res
end

factory({k = 1})
factory({k = 2})

collectgarbage()

for k, v in pairs(mem) do
  print(k.k)
end