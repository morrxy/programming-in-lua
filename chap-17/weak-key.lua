a = {}
setmetatable(a, {__mode = "k"})

key = {}
a[key] = 1

key = {}
a[key] = 2

collectgarbage()

for k, v in pairs(a) do
  print(v)
end
