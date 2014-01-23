--[[
Exercise 3.3: We can represent a polynomial an xn + an−1 xn−1 + . . . + a1 x1 + a0
in Lua as a list of its coefficients, such as {a0 , a1 , ..., an }.
Write a function that receives a polynomial (represented as a table) and a
value for x and returns the polynomial value.
]]

function poly( polynomial, x )
  n = #polynomial
  sum = 0
  for i=1,n do
    item = polynomial[i] * x^(i-1)
    sum = sum + item
  end
  return sum
end

print(poly({1, 2, 3}, 2))