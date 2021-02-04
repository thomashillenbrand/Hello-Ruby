system 'clear'

my_hash = {}
puts my_hash.length
my_hash[:username] = "my username"
puts my_hash
my_hash["2"] = 5
my_hash[3] = "6"
puts my_hash
puts my_hash.length

# Hashes can have any obj as a key, and any obj as a val
puts my_hash.keys
puts my_hash.values
puts "+======================+"
my_hash.each_key { |key| puts key }

a = my_hash.keys.select { |key| key.instance_of?(String) }
puts a.class
p a

# get good with Hashes!! tons of methods available for manipulating them.

puts "+======================+"
my_hash.each { |key, value| puts "The key (#{key}) class is: #{key.class} and the value (#{value}) class is: #{value.class}" }
puts "+======================+"
p my_hash
# my_hash.select { |k, v| my_hash.delete(k) if v.instance_of?(String) }
my_hash.delete_if { |k, v| v.instance_of?(String) }
p my_hash


