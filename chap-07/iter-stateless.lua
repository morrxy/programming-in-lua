local function iter( a, i )
  i = i + 1
  local v = a[i]
  if v then
    return i, v
  end
end

function ipairs (a)
  return iter, a, 0
end

a = {"one", "two", "three"}

for i, v in ipairs(a) do
  print(i, v)
end