--[[

Exercise 7.2: Add a step parameter to the iterator from the previous exercise.
Can you still implement it as a stateless iterator?

]]

-- version: i = n, m
print("version: i = n, m")
for i = 1, 10, 2 do
  print(i)
end


-- version: i in fromto(n, m)
function fromto(n, m, step)
  local control = n - step
  return function ()
    control = control + step
    if control <= m then
      return control
    else
      return nil
    end
  end
end

print("version: i in fromto(n, m)")
for i in fromto(1, 10, 2) do
  print(i)
end

-- version: i in fromto_stateless(n, m)
local function iter_stateless( invariant_state, from )
  from = from + invariant_state.step
  if from <= invariant_state.to then
    return from
  end
end

function fromto_stateless( from, to, step)
  return iter_stateless, {to = to, step = step}, from - step
end

print("version: i in fromto_stateless(n, m)")
for i in fromto_stateless(1, 10, 2) do
  print(i)
end
