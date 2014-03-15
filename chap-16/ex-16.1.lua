--[[

Exercise 16.1: Implement a class Stack, with methods push, pop, top, and
isempty.

]]

Stack = {}

function Stack:new()
  local o = {top_index = 0}
  setmetatable(o, {__index = self})
  return o
end

function Stack:push(e)
  self[self.top_index + 1] = e
  self.top_index = self.top_index + 1
end

function Stack:pop()
  if (self.top_index >= 1) then
    self.top_index = self.top_index - 1
  end
end

function Stack:top()
  return self[self.top_index]
end

function Stack:isempty()
  return self.top_index == 0
end

local s = Stack:new()

print(s:isempty())

s:push("el1")
print(s:isempty())
print(s:top())

s:push("el2")
print(s:top())

s:push("el3")
print(s:top())

s:pop()
print(s:top())
s:pop()
print(s:top())
s:pop()
print(s:top())

print(s:isempty())

s:push(1)
print(s:isempty())
print(s:top())

s:push(2)
print(s:top())

local s2 = Stack:new()
s2:push('a')
print(s2:top())

