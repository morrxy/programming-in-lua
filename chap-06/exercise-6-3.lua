--[[

Exercise 6.3: Sometimes, a language with proper-tail calls is called properly tail
recursive, with the argument that this property is relevant only when we have
recursive calls. (Without recursive calls, the maximum call depth of a program
would be statically fixed.)
Show that this argument does not hold in a dynamic language like Lua: write
a program that performs an unbounded call chain without recursion. (Hint: see
Section 8.1.)

]]