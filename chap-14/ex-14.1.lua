--[[

Exercise 14.1: The getfield￼function that we defined in the beginning of this
chapter is too forgiving, as it accepts “fields” like math?sin or string!!!gsub.
Rewrite it so that it accepts only single dots as name separators. (You may
need some knowledge from Chapter 21 to do this exercise.)

]]

function getfield(f)
  local v = _G
  for w in string.gmatch(f, "[^.]+") do
    if (v[w]) then
      print("found fiedl: " .. w)
      v = v[w]
    else
      print("not exist that field: " .. w)
      break
    end
  end
  return v
end

print(getfield("io.read"))
print(getfield("string!!!gsub.math?sin.sin"))
