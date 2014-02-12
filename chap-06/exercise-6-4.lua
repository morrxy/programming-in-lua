--[[

Exercise 6.4: As we have seen, a tail call is a goto in disguise.
Using this idea, reimplement the simple maze game from Section 4.4
using tail calls. Each block should become a new function, and each
goto becomes a tail call.

]]

room1 = function ()
print "in room1"
print "which direction to go?"
local move = io.read()
if move == "south" then return room3()
  elseif move == "east" then return room2()
  else
    print("invalid move")
    return room1()
  end
end

room2 = function ()
print "in room2"
print "which direction to go?"
local move = io.read()
if move == "south" then return room4()
  elseif move == "west" then return room1()
  else
    print "invalid move"
    return room2()
  end
end

room3 = function ()
print "in room3"
print "which direction to go?"
local move = io.read()
if move == "north" then return room1()
  elseif move == "east" then return room4()
  else
    print "invalid move"
    return room3()
  end
end

room4 = function ( )
print "in room4"
print("you win!")
end

room1()