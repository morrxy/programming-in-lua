--[[

Exercise 12.3: Modify the code of the previous exercise so that it uses the
syntax ["key"] = value only when necessary (that is, when the key is a string
but not a valid identifier).

]]

function serialize(o)
  if type(o) == "number" then
    io.write(o)
  elseif type(o) == "string" then
    io.write(string.format("%q", o))
  elseif type(o) == "table" then
    io.write("{\n")
    for k, v in pairs(o) do
      -- io.write("  ", k, " = ")
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