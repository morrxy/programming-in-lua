--[[

Exercise 12.2: Modify the code in Listing 12.2 so that it uses the syntax
["key"] = value, as suggested in Section 12.2.

]]

function serialize(o)
  if type(o) == "number" then
    io.write(o)
  elseif type(o) == "string" then
    io.write(string.format("%q", o))
  elseif type(o) == "table" then
    io.write("{\n")
    for k, v in pairs(o) do
      io.write("  ["); serialize(k); io.write("] = ")
      serialize(v)
      io.write(",\n")
    end
    io.write("}\n")
  else
    error("cannot serialize a " .. type(o))
  end
end

t = { a = 12, b = "Lua", key = "another \"one\"", tb = {1, 2, 3}}

serialize(t)