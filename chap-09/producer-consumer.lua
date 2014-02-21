producer = coroutine.create(function()
  while true do
    print("in producer: input x")
    local x = io.read() -- produce new value
    print("new x:", x)
    send(x)
  end
end)

function send (x)
print("in send:", x)
-- coroutine.yield(x)
end

function receive ()
  print("in receive:")
  print(coroutine.status(producer))
  local status, value = coroutine.resume(producer)
  print("in receive:")
  print(status, value)
  return value
end

receive()