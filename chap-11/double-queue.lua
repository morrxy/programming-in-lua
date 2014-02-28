List = {}

function List.new ()
  return {first = 0, last = -1}
end

function List.pushfirst (list, value)
  local first = list.first - 1
  list.first = first
  list[first] = value
end

function List.pushlast (list, value)
  local last = list.last + 1
  list.last = last
  list[last] = value
end

function List.popfirst (list)
  local first = list.first
  if first > list.last then error("list is empty") end
  local value = list[first]
  list[first] = nil -- to allow garbage collection
  list.first = first + 1
  return value
end

function List.poplast (list)
  local last = list.last
  if list.first > last then error("list is empty") end
  local value = list[last]
  list[last] = nil -- to allow garbage collection
  list.last = last - 1
  return value
end

function List.showlist(list)
  print("begin:")
  for i = list.first, list.last do
    print(list[i])
  end
  print("end\n")
end

local l = List.new()

print(l.first)
print(l.last)

List.pushfirst(l, "a")
List.showlist(l)

List.pushfirst(l, "b")
List.showlist(l)

List.pushlast(l, "c")
List.showlist(l)

List.pushlast(l, "d")
List.showlist(l)

print("popfirst:", List.popfirst(l))
List.showlist(l)

print("poplast:", List.poplast(l))
List.showlist(l)
