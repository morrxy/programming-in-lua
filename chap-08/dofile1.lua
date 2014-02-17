function dofile1 (filename)
  local f = assert(loadfile(filename))
  return f()
end

dofile1("test.lua")
dofile1("test1.lua")