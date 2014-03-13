--[[

Exercise 16.1: Implement a class Stack, with methods push, pop, top, and
isempty.

]]

Stack = {}

Stack.new = function()
  local o = {}
  setmetatable(o, {__index = self})
  return o
end

Stack.push = function(e)
  print("push: " .. e)
end

local s = Stack.new()

s.push("ele")

