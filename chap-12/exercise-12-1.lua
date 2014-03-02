--[[

Exercise 12.1: Modify the code in Listing 12.2 so that it indents nested
tables. (Hint: add an extra parameter to serialize with the indentation string.)

]]

function serialize(o, indent)
  if type(o) == "number" then
    io.write(o)
  elseif type(o) == "string" then
    io.write(string.format("%q", o))
  elseif type(o) == "table" then
    indent = indent or "  "
    io.write("{\n")
    for k, v in pairs(o) do
      io.write(indent, k, " = ")
      serialize(v, indent .. "  ")
      io.write(",\n")
    end
    io.write(string.sub(indent, 1, #indent - 2) .. "}")
  else
    error("cannot serialize a " .. type(o))
  end
end

t = { a = 12, b = "Lua", key = "another \"one\"", tb = {1, 2, 3, {4, 5}}}

serialize(t)
