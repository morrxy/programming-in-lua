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
  end
}

mt.__pairs = function ()
  return function (_, k)
    return next(_t, k)
  end
end

setmetatable(t, mt)

t[1] = "hello"
t[2] = "world"

for k, v in pairs(t) do
  print(v)
end