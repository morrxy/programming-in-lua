--[[

Exercise 7.4: Write an iterator that returns all non-empty substrings of a
given string. (You will need the string.sub function.)

]]


local function iterator ( state )
  if (state.sub_len > #state.str) then return nil end

  local e = state.pos + state.sub_len - 1
  if (e <= #state.str) then
    local result = string.sub(state.str, state.pos, e)

    state.pos = state.pos + 1

    -- print("pos+1:", state.pos, "sub_len:", state.sub_len)
    return result
  else
    state.sub_len = state.sub_len + 1
    if (state.sub_len > #state.str) then return nil end

    local e = 1 + state.sub_len - 1
    local result = string.sub(state.str, 1, e)
    state.pos = 2
    -- print("pos=1:", state.pos, "sub_len+1:", state.sub_len)
    return result
  end

end

function substrings( s )
  return iterator, {str = s, sub_len = 1, pos = 1}
end

-- test:
str1 = "abc"

for i in substrings(str1) do
  print(i)
end

