--[[

Exercise 16.3: Another way to provide privacy for objects is to implement
them using proxies (Section 13.4). Each object is represented by an empty
proxy table. An internal table maps proxies to tables that carry the object
state. This internal table is not accessible from the outside, but methods
use it to translate their self parameters to the real tables where they
operate. Implement the Account example using this approach and discuss its
pros and cons.

(There is a small problem with this approach. Try to figure it out or see
Section 17.3, which also presents a solution.)

]]

function Stack()
  local proxy = {}

  local mt = {}

  mt.top_index = 0

  mt.isempty = function()
    return mt.top_index == 0
  end

  mt.push = function(e)
    mt[mt.top_index + 1] = e
    mt.top_index = mt.top_index + 1
  end

  mt.pop = function()
    if (mt.top_index >= 1) then
      local v = mt[mt.top_index]
      mt.top_index = mt.top_index - 1
      return v
    end
  end

  mt.top = function()
    return mt[mt.top_index]
  end

  setmetatable(proxy, {__index = mt})

  return proxy
end

local s = Stack()

print(s.isempty())
print(s.top())
s.push(1)
print(s.top())
s.push(2)
print(s.top())
print(s.pop())
print(s.pop())
print(s.pop())

