co = coroutine.create(function()
    for i = 1, 10 do
      print("co", i)
      coroutine.yield()
    end
  end)

for i = 1, 12 do
  print(coroutine.resume(co))
end
