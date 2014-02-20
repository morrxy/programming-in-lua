function foo (str)
  if type(str) ~= "string" then
    error("string expected")
  end
  print(str)
end

function foo2 (str)
  if type(str) ~= "string" then
    error("string expected", 2)
  end
  print(str)
end


-- foo("hello")
-- foo({})
-- foo2("hello")
foo2({})
