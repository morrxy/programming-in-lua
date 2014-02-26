--[[

Exercise 5.4: Write a function that receives an array and prints
all combinations of the elements in the array.
(Hint: you can use the recursive formula for combination:
C(n, m) = C(n − 1, m − 1) + C(n − 1, m). To generate all C(n, m)
combinations of n elements in groups of size m, you first add
the first element to the result and then generate all
C (n − 1, m − 1) combinations of the remaining elements in the
remaining slots; then you remove the first element from the
result and then generate all C (n − 1, m) combinations of the
remaining elements in the free slots. When n is smaller than m,
there are no combinations. When m is zero, there is only one
combination, which uses no elements.)

]]

function map(f, a, ...) if a then return f(a), map(f, ...) end end
function incr(k) return function(a) return k > a and a or a+1 end end
function combs(m, n)
  if m * n == 0 then return {{}} end
  local ret, old = {}, combs(m-1, n-1)
  for i = 1, n do
    for k, v in ipairs(old) do ret[#ret+1] = {i, map(incr(i), unpack(v))} end
  end
  return ret
end

for k, v in ipairs(combs(3, 5)) do print(unpack(v)) end