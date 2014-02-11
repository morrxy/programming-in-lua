--[[

Exercise 5.4: Write a function that receives an array and prints
all combinations of the elements in the array.
(Hint: you can use the recursive formula for combination:
C(n, m) = C(n − 1, m − 1) + C(n − 1, m). To generate all C(n, m)
combinations of n elements in groups of size m, you first add
the first element to the result and then generate all
C (n − 1, m − 1) combinations of the remaining elements in the
remaining slots; then you remove the first element from the
result and then generate all C (n − 1, m) combinations of the
remaining elements in the free slots. When n is smaller than m,
there are no combinations. When m is zero, there is only one
combination, which uses no elements.)

]]

