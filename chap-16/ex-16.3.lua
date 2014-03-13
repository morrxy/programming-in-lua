--[[

Exercise 16.3: Another way to provide privacy for objects is to implement
them using proxies (Section 13.4). Each object is represented by an empty
proxy table. An internal table maps proxies to tables that carry the object
state. This internal table is not accessible from the outside, but methods
use it to translate their self￼parameters to the real tables where they
operate. Implement the Account example using this approach and discuss its
pros and cons.

(There is a small problem with this approach. Try to figure it out or see
Section 17.3, which also presents a solution.)

]]