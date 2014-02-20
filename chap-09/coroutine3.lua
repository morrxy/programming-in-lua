co = coroutine.create (function (x)
                        print("co1", x)
                        print("co2", coroutine.yield())
                       end)

coroutine.resume(co, "hi")    --> co1  hi
coroutine.resume(co, 4, 5)    --> co2  4  5