--[[

Exercise 9.3: Implement a transfer function in Lua. If you think about
resume–yield as similar to call–return, a transfer would be like a goto:
it suspends the running coroutine and resumes any other coroutine, given
as an argument. (Hint: use a kind of dispatch to control your coroutines.
Then, a transfer would yield to the dispatch signaling the next coroutine
to run, and the dispatch would resume that next coroutine.)

]]

co1 = coroutine.create(function()
  print("hello")
  transfer(co2)
  print("world")
end)

co2 = coroutine.create(function()
  print("between hello world")
  transfer(co1)
end)

function transfer(co)
  coroutine.yield(co)
end

function dispatch()
  local s, v = coroutine.resume(co1)
  s, v = coroutine.resume(v)
  coroutine.resume(v)
end

dispatch()
