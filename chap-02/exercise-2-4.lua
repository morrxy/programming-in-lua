--[[
Exercise 2.4:
Lua?
19
How can you embed the following piece of XML as a string in
<![CDATA[
Hello world
\]\]>
Show at least two different ways.
]]

xml = [=[
<![CDATA[
Hello world
]]>
]=]

xml2 = "<![CDATA[\nHello world\n]]>"

xml3 = '<![CDATA[\nHello world\n]]>'

print(xml)
-- print('\n')
print(xml2)
-- print('\n')
print(xml3)