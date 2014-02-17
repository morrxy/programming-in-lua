i = 32
local i = 0
f = load("i = i + 1; print(i)")
g = function () i = i + 1; print(i); end
f()
g()