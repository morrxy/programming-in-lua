a = 2
do
  local _ENV = {print = print, a = 14}
  print(a)
end
print(a)