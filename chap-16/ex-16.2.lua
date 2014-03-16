--[[

Exercise 16.2: Implement a class StackQueue as a subclass of Stack. Besides
the inherited methods, add to this class a method insertbottom, which inserts
an element at bottom of the stack. (This method allows us to use objects of
this class as queues.)

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
    local v = self[self.top_index]
    self.top_index = self.top_index - 1
    return v
  end
end

function Stack:top()
  return self[self.top_index]
end

function Stack:isempty()
  return self.top_index == 0
end



StackQueue = Stack:new()

function StackQueue:new()
  local o = {top_index = 0, bottom_index = 0}
  setmetatable(o, {__index = self})
  return o
end

function StackQueue:pop()
  if (self.top_index ~= self.bottom_index) then
    self.top_index = self.top_index - 1
  end
end

function StackQueue:isempty()
  return self.top_index == self.bottom_index
end

function StackQueue:insertbottom(e)
  self[self.bottom_index] = e
  self.bottom_index = self.bottom_index - 1
end

local s = StackQueue:new()

print(s:isempty())

s:insertbottom("el1")
print(s:isempty())
print(s:top())

print(s:pop())
print(s:isempty())
print(s:top())

s:push("el1")
print(s:isempty())
print(s:top())









