a = 1
local newgt = {}
setmetatable(newgt, {__index = _G})
_ENV = newgt
print(a)

a = 10

print(a)

print(_G.a)

_G.a = 20

print(_G.a)