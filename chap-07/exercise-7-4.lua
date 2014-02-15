--[[

Exercise 7.4: Write an iterator that returns all non-empty substrings of a
given string. (You will need the string.sub function.)

]]

local function iterator( str, start )
  start = start + 1

  if (start <= #str) then
    return start, string.sub(str, start, #str)
  end
end

function substrings( str )
  return iterator, str, 0
end

local function iterator1(state)
  state.loop_count = state.loop_count + 1
  local current_loop_str = string.sub(state.loop_str, state.loop_count, #state.loop_str)

  if (state.loop_count <= state.loop_times) then
    return current_loop_str
  end
end

local function iterator2(state)
  if (#state.loop_str > 0) then
  end
end

function substrings1( str )
  return iterator1, {loop_count = 0, loop_times = #str, loop_pos = 0, loop_str = str}
end

str1 = "go to school"

for i in substrings1(str1) do
  print(i)
end

