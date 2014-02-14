--[[

Exercise 7.4: Write an iterator that returns all non-empty substrings of a
given string. (You will need the string.sub function.)

]]

local iterator

function substrings( str )
  return iterator, str, 0
end

function iterator( str, start )
  print(type(start), start)
  print(type(str), str)
  start = start + 1

  if (start <= #str) then
    return string.sub(str, start, #str)
  end
end

str1 = "go to school"

for s in substrings(str1) do
  print(s)
end