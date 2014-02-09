--[[
Exercise 3.4:
can you write the function from the previous item so that it uses
at most n additons and n multiplications(and no exponentiations)?
]]

function poly( polynomial, x )
  n = #polynomial
  sum = 0
  xe = 1

  for i=1,n do
    item = polynomial[i] * xe
    sum = sum + item
    xe = xe * x
  end
  return sum
end

print(poly({1, 2, 3}, 2))