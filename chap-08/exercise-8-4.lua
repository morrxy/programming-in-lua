--[[

Exercise 8.4: Can you find any value for f such that the call pcall(pcall, f)
returns false as its first result?

]]


r, e = pcall(pcall, 1)

print("first: ", r, "second:", e)