-- Exercise 5.1: Write a function that receives an arbitrary number
-- of strings and returns all of them concatenated together.

function func1( ... )
  local str = ""
  for i, v in ipairs{...} do
    str = str .. v
  end
  return str
end

print(func1("a", "b", "c"))