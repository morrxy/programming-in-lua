--[[

Exercise 13.3: Complete the implementation of proxies in Section
13.4 with an __ipairs metamethod.

]]

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
  end,

  __ipairs = function (t)
    local i = 0
    return function ()
      i = i + 1
      if (t[index][i]) then
        return i, t[index][i]
      end
    end
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

print("all k, v:")
for k, v in pairs(t) do
  -- print(t[k])
  print(k, v)
end

print("k, v in array part:")
for k, v in ipairs(t) do
  print(k, v)
end
