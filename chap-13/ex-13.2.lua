--[[

Exercise 13.2: Define a metamethod __len for sets so that #s
returns the number of elements in set s.

]]

local mt = {}

Set = {}

function Set.new (l)
  local set = {}
  setmetatable(set, mt)
  for _, v in ipairs(l) do
    set[v] = true
  end
  return set
end

function Set.length (a)
  local res = 0
  for k in pairs(a) do
    res = res + 1
  end
  return res
end

function Set.tostring (set)
  local l = {}
  for e in pairs(set) do
    l[#l + 1] = e
  end
  return "{" .. table.concat(l, ", ") .. "}"
end

function Set.print (s)
  print(Set.tostring(s))
end

mt.__len = Set.length

s1 = Set.new{10, 20, 30, 50}
s2 = Set.new{30, 1}

print("s1:", #s1)
print("s2:", #s2)
