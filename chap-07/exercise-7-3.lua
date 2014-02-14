--[[

Exercise 7.3: Write an iterator uniquewords that returns all words from a
given file without repetitions. (Hint: start with the allwords code in
Listing 7.1; use a table to keep all words already reported.)

]]

function uniquewords()
  local line = io.read()
  local pos = 1
  local reported_words = {}

  local function contain( a, item )
    local result = false

    for k, v in ipairs(a) do
      if v == item then
        result = true
        return result
      end
    end

    return result
  end

  return function ()
    while line do
      local s, e = string.find(line, "%w+", pos)
      if s then
        pos = e + 1
        local new_word = string.sub(line, s, e)

        if (not contain(reported_words, new_word)) then
          reported_words[#reported_words + 1] = new_word
          return new_word
        end
      else
        line = io.read()
        pos = 1
      end
    end
    return nil
  end
end

for word in uniquewords() do
  print(word)
end