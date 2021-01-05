a = "yves"
b = "yves"
c  = "yves"

d = a.upcase
p d.object_id 
p a.object_id
p '-----------'


e = a.upcase!


p a.object_id 
p e.object_id 


p '::::::::::::::'

x = 'hello'
y = x + 'world'

z = 'hi'
f = z << ' ohoi'

p x.object_id
p y.object_id

p z.object_id
p f.object_id

p '_________-'

g = 'yves'
h = 'yves'

p g.object_id
p h.object_id

x = 4
y = 4
z = 2 + 2

p x.object_id
p y.object_id
p z.object_id

p 'jooooooooooooooooooo'

tom = 4
jerry = tom
tom = 0

puts tom
puts jerry


bob = "uncle-"
earth = bob 
earth << bob
p bob 
p earth
mary = bob.downcase  + bob[0] + earth.upcase!
p mary
p bob 
p earth
p earth << bob

p '---'

a = "hello"
b = "hello"
p a.equal?(b) #=> false
p a.eql?(b)