--[[

Exercise 15.3: Write a searcher that searches for Lua files and C libraries
at the same time. For instance, the path used for this searcher could be
something like this:

./?.lua;./?.so;/usr/lib/lua5.2/?.so;/usr/share/lua5.2/?.lua

(Hint: use package.searchpath to find a proper file and then try to load it,
first with loadfile and next with package.loadlib.)

]]