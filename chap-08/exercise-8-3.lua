--[[

Exercise 8.3: Function stringrep￼,in Listing 8.2, uses a binary multiplication algorithm to concatenate copies of a given string . For any fixed , we can create a specialized version of stringrep￼by unrolling the loop into a sequence of instructions r=r..s￼and s=s..s. As an example, for n=5￼the unrolling gives us the following function:

function stringrep_5 (s)
  local r = ""
  r = r .. s
  s = s .. s
  s = s .. s
  r = r ..s
  return r
end

Listing 8.2. String repetition:

function stringrep (s, n)
  local r = ""
  if n > 0 then
    while n > 1 do
      if n % 2 ~= 0 then r = r .. s end
      s = s .. s
      n = math.floor(n / 2)
    end
    r = r .. s
  end
  return r
end

Write a function that, given n, returns a specialized function stringrep_n. Instead of using a closure, your function should build the text of a Lua function with the proper sequence of instructions (r=r..s and s=s..s) and then use load to produce the final function. Compare the performance of the generic function (or of a closure using it) with your tailor-made functions.


]]