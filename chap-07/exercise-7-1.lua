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

print("version: i = n, m")
for i = 1, 10 do
  print(i)
end

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