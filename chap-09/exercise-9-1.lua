--[[

Exercise 9.1: Use coroutines to transform the function in Exercise 5.4 into a
generator for combinations, to be used like here:

for c in combinations({"a", "b", "c"}, 2) do
  printResult(c)
end

]]

function combgen(a, n)
  coroutine.yield({"a", "b"})
end

function combinations(a, n)
  local co = coroutine.create(function() combgen(a, n) end)
  return function()  -- iterator
    local code, res = coroutine.resume(co)
    return res
  end
end

function printResult(a, n)
  for i = 1, #a do
    io.write(a[i], " ")
  end
  io.write("\n")
end

for c in combinations({"a", "b", "c"}, 2) do
  printResult(c)
end