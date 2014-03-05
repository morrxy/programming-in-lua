local index = {}

local mt = {
  __index = function (t, k)
    print("*access to element " .. tostring(k))
    return t[index][k]
  end,

  __newindex = function (t, k, v)
    print("*update of element " .. tostring(k) ..
      " to " .. tostring(v))
    t[index][k] = v
  end,

  __pairs = function (t)
    return function (t, k)
      return next(t[index], k)
    end, t
  end
}

function track (t)
  local proxy = {}
  proxy[index] = t
  setmetatable(proxy, mt)
  return proxy
end

t = {1, 2, 3; k1 = "v1", k2 = "v2"}
t = track(t)

t[4] = 4

for k, v in pairs(t) do
  print(t[k])
end

t2 = {4, 5, 6}
t2 = track(t2)

t2.key1 = "v1"

for k, v in pairs(t2) do
  print(t2[k])
end



