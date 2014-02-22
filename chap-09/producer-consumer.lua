producer = coroutine.create(function()
  while true do
    print("input a new value:")
    local x = io.read() -- produce new value
    send(x)
  end
end)

function send (x)
  coroutine.yield(x)
end

function receive ()
  local status, value = coroutine.resume(producer)
  print(status, value)
  return value
end


while true do
  print("received: ", receive())
end