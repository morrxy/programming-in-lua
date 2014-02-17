print "enter function to to be plotted (with varible 'x'):"
local l = io.read()
local f = assert(load("return " .. l))

for i = 1, 20 do
  x = i
  print(string.rep("x", f()))
end
