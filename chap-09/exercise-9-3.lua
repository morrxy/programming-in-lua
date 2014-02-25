--[[

Exercise 9.3: Implement a transfer function in Lua. If you think about
resume–yield as similar to call–return, a transfer would be like a goto:
it suspends the running coroutine and resumes any other coroutine, given
as an argument. (Hint: use a kind of dispatch to control your coroutines.
Then, a transfer would yield to the dispatch signaling the next coroutine
to run, and the dispatch would resume that next coroutine.)

]]

fn1 = function()
  print("hello")
end

fn2 = function()
  print("hi")
end

threads = {co1 = fn1, co2 = fn2}

function transfer(co)
  yield(co)
end

function dispatch()

end