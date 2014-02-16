--[[

Exercise 8.1: Frequently, it is useful to add some prefix to a chunk of code when loading it. (We saw an example previously in this chapter, where we prefixed a return to an expression being loaded.) Write a function loadwithprefix that works like load, except that it adds its extra first argument (a string) as a prefix to the chunk being loaded.

Like the original load, loadwithprefix should accept chunks represented both as strings and as reader functions. Even in the case that the original chunk is a string, loadwithprefix should not actually concatenate the prefix with the chunk. Instead, it should call load with a proper reader function that first returns the prefix and then returns the original chunk.

]]
