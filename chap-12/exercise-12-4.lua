--[[

Exercise 12.4: Modify the code of the previous exercise so that it uses the
constructor syntax for lists whenever possible. For instance, it should
serialize the table {14, 15, 19} as {14, 15, 19} not as
{[1] = 14, [2] = 15, [3] = 19}. (Hint: start by saving the values of
keys 1,2,. . . , as long as they are not nil. Take care not to save them
again when traversing the rest of the table.)

]]