--[[

Exercise 6.2:
Exercise 3.3 asked you to write a function that receives a
polynomial (represented as a table) and a value for its variable, and returns
the polynomial value. Write the curried version of that function. Your function
should receive a polynomial and returns a function that, when called with a
value for x, returns the value of the polynomial for that x. See the example:

f = newpoly({3, 0, 1})
print(f(0)) --> 1
print(f(5)) --> 76
print(f(10)) --> 301

]]

function newpoly( coefficients )
  return function ( x )
    local sum = 0
    for i=0,#coefficients - 1 do
      local item = coefficients[#coefficients - i] * x^(i)
      sum = sum + item
    end

    return sum
  end
end