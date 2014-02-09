-- Exercise5.3: Write a function that receives an arbitrary number of
-- values and returns all of them, except the first one.

function f( ... )
  local a = {}
  for i,v in ipairs{...} do
    if (i ~= 1) then
      a[#a + 1] = v
    end
  end

  return table.unpack(a)
end