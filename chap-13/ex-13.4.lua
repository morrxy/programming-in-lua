--[[

Exercise 13.4: An alternative way to implement read-only tables
might use a function as the __index metamethod. This alternative
makes accesses more expensive, but the creation of read-only
tables is cheaper, as all read-only tables can share a single
metatable. Rewrite function readOnly using this approach.

]]

local index = {}

local mt = {
  __index = function (t, k)
    return t[index][k]
  end,

  __newindex = function (t, k, v)
    error("attempt to update a read-only table", 2)
  end,
}

function readOnly(t)
  local proxy = {}
  proxy[index] = t
  setmetatable(proxy, mt)
  return proxy
end

days = readOnly{"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
t1 = readOnly{k1 = "v1", k2 = "v2"}

print(days[1])
print(t1.k1)

days[2] = "Noday"