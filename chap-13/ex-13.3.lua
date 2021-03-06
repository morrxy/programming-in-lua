--[[

Exercise 13.3: Complete the implementation of proxies in Section
13.4 with an __ipairs metamethod.

]]

t = {}
local _t = t
t = {}

local mt = {
  __index = function (t, k)
    print("*access to element " .. tostring(k))
    return _t[k]
  end,

  __newindex = function (t, k, v)
    print("*update of element " .. tostring(k) ..
      " to " .. tostring(v))
    _t[k] = v
  end,

  __pairs = function ()
    return function (_, k)
      return next(_t, k)
    end
  end,

  __ipairs = function ()
    local i = 0
    return function ()
      i = i + 1
      if(_t[i]) then
        return i, _t[i]
      end
    end
  end
}

setmetatable(t, mt)

t[1] = "hello"
t[2] = "world"
t.key1 = "v1"
t.key2 = "v2"

print("all values:")
for k, v in pairs(t) do
  print(v)
end

print("all values of array part:")
for k, v in ipairs(t) do
  print(k, v)
end