co1 = coroutine.create(function (a, b, c)
                        print("co", a, b, c + 2)
                      end)

co2 = coroutine.create(function (a, b, c)
                        print("co", a, b, c + 2)
                      end)

a1 = coroutine.resume(co1, 1, 2, 3)  --> print: co  1  2  5
print(a1) --> true

a2 = coroutine.resume(co2) --> print nothing, because error
print(a2) --> false
