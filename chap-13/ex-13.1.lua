--[[

Exercise 13.1: Define a metamethod __sub for sets that returns
the difference of two sets. (The set a − b is the set of
elements from a that are not in b.)

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

function Set.diff (a, b)
  local res = Set.new{}
  for k in pairs(a) do
    if (not b[k]) then
      res[k] = true
    end
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

mt.__sub = Set.diff

s1 = Set.new{10, 20, 30, 50}
s2 = Set.new{30, 1}

s3 = s1 - s2
Set.print(s3)
