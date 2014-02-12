goto room1

::room1:: do
print "in room1"
local move = io.read()
if move == "south" then goto room3
  elseif move == "east" then goto room2
  else
    print("invalid move")
    goto room1
  end
end

::room2:: do
print "in room2"
local move = io.read()
if move == "south" then goto room4
  elseif move == "west" then goto room1
  else
    print "invalid move"
    goto room2
  end
end

::room3:: do
print "in room3"
local move = io.read()
if move == "north" then goto room1
  elseif move == "east" then goto room4
  else
    print "invalid move"
    goto room3
  end
end

::room4:: do
print "in room4"
print("you win!")
end


