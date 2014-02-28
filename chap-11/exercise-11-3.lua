--[[

Exercise 11.3: Modify the graph structure so that it can keep a label for
each arc. The structure should represent each arc by an object, too,
with two fields: its label and the node it points to. Instead of an adjacent
set, each node keeps an incident set that contains the arcs that originate at
that node. Adapt the readgraph function to read two node names plus a label
from each line in the input file. (Assume that the label is a number.)

]]