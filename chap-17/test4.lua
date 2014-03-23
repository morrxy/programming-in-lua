-- a table with weak keys
wk = setmetatable({}, {__mode = "k"})

-- a table with weak values
wv = setmetatable({}, {__mode = "v"})

o = {}  -- an object
wv[1] = o; wk[o] = 10  -- add it to both tables

setmetatable(o, {__gc = function (o)
  print(wk[o], wv[1])
end})

o = nil
collectgarbage()  --> 10  nil