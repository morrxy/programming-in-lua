--[[

Exercise 8.2: Write a function multiload that generalizes loadwithprefix by
receiving a list of readers, as in the following example:

f = multiload("local x = 10;",
              io.lines("temp", "*L"),
              " print(x)")

For the above example, multiload should load a chunk equivalent to the
concatenation of the string "local..." with the contents of the temp file with
the string "print(x)". Again, like function loadwithprefix from the previous
exercise, multiload should not actually concatenate anything.

]]

function multiload( ... )
  local arg = table.pack(...)
  local n = arg.n
  local chunks = {}

  local r = function()
    for i = 1, n do
      load(arg[i])()
    end
  end

  return r
end

-- test, how to access local x = 10?
f = multiload("local x = 10;",
              io.lines("test.lua", "*L"),
              " print(x)")

f()
