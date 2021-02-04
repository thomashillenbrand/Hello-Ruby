system 'clear'

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts "Puts-ing an array"
puts a
puts "p an array"
puts "Printing an array"
print a
puts
p a.last
puts "============================="
x=1..100
puts x
p x
print x
puts
puts x.class
p x.to_a
p x.to_a.shuffle
puts x

puts "==================="
letters = ("a".."z").to_a
p letters

y = (1..10).to_a
p y
y.reverse! # ! => mutates caller
p y
z=(0..9).to_a
p z
z<<10
p z

# Definitely look at array methods
#  - arr.uniq => strips out duplicates
#  - arr.append => add to the end
#  - arr.unshift => add to the beginning
#  - arr.include? => check for obj in arr
#  - arr.push(obj) => add obj to end
#  - arr.pop(obj) => remove obj from arr and return it
#  - arr.join => combines elements into one string


# Each loops:
puts "FOR LOOP:"
for i in z
  puts i
end
puts "================"
puts "EACH LOOP:"
z.each {|val| print "#{val} "}
puts
z_odd = z.select { |val| val.odd? }
z_even = z.select { |val| val.even? }
p z_odd
p z_even




