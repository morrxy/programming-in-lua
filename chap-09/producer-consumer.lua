producer = coroutine.create(function()
  while true do
    local x = io.read() -- produce new value
    send(x)
  end
end)

function send (x)
coroutine.yield(x)
end

function receive ()
  print(coroutine.status(producer))
  local status, value = coroutine.resume(producer)
  print(status, value)
  return value
end

receive()