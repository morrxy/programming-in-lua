--[[

Exercise 17.2: Consider the first example of Section 17.6, which creates a
table with a finalizer that only prints a message when activated. What
happens if the program ends without a collection cycle? What happens if
the program calls os.exit? What happens if the program ends with some error?

]]

-- the program ends without a collection cycle -> hi
-- o = {x = "hi"}
-- setmetatable(o, {__gc = function(o) print(o.x) end})
-- o = nil


-- the program calls os.exit -> do nothing
-- o = {x = "hi"}
-- setmetatable(o, {__gc = function(o) print(o.x) end})
-- o = nil
-- os.exit()

-- the program ends with some error, -> hi
-- o = {x = "hi"}
-- setmetatable(o, {__gc = function(o) print(o.x) end})
-- o = nil
-- v()