--[[

Exercise 13.4: An alternative way to implement read-only tables
might use a function as the __index metamethod. This alternative
makes accesses more expensive, but the creation of read-only
tables is cheaper, as all read-only tables can share a single
metatable. Rewrite function readOnly using this approach.

]]