--[[

Exercise 7.1: Write an iterator fromto锟約uch that the next two loops
become equivalent:

for i in fromto(n, m)
  <body>
end

for i = n, m
  <body>
end

can you implement it as a stateless iterator?

]]

-- version: i = n, m
print("version: i = n, m")
for i = 1, 10 do
  print(i)
end


-- version: i in fromto(n, m)
function fromto(n, m)
  local control = n - 1
  return function ()
    control = control + 1
    if control <= m then
      return control
    else
      return nil
    end
  end
end

print("version: i in fromto(n, m)")
for i in fromto(1, 10) do
  print(i)
end

-- version: i in fromto_stateless(n, m)
local function iter_stateless( to, from )
  from = from + 1
  if from <= to then
    return from
  end
end

function fromto_stateless( from, to )
  return iter_stateless, to, from - 1
end

print("version: i in fromto_stateless(n, m)")
for i in fromto_stateless(1, 10) do
  print(i)
end
