--[[

Exercise 16.1: Implement a class Stack, with methods push, pop, top, and
isempty.

]]

Stack = {}

Stack.new = function()
  local o = {}
  setmetatable(o, {__index = Stack})
  return o
end

function Stack:push(e)
  print("push: " .. e .. " to " .. tostring(self))
end

Stack.pop = function(self)
  print("pop from " .. tostring(self))
end

local s = Stack.new()

s.pop(s)

s:push("ele")

