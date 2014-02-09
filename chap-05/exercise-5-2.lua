-- Exercise 5.2: Write a function that receives an array and prints
-- all elements in that array. Consider the pros and cons of using
-- table.unpack in this function.

function f( a )
  print(table.unpack(a))
end

function f2( a )
  for i,v in ipairs(a) do
    print(v)
  end
end