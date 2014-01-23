--[[
Exercise 1.1:  Run the factorial example. What happens to your program if you
enter a negative number? Modify the example to avoid this problem.
--]]

function fact( n )
  if n == 0 then
    return 1
  else
    if n < 0 then
      return "negative number inputed..."
    else
      return n * fact(n-1)
    end
  end
end

print("enter a number")
a = io.read("*n")
print(fact(a))