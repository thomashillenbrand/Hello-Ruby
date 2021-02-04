system 'clear'
=begin
first_name = 'Tom'
last_name = 'Hillenbrand'

# puts first_name + " " + last_name
puts "My first name is #{first_name} and my last name is #{last_name}"

sentence = "Welcome to the Jungle"
puts sentence
new_sentence = sentence.sub("the Jungle", "Utopia")
puts new_sentence
puts sentence.sub("Welcome", "Don't come")
puts sentence

puts "========================="

split_sentence = "              hi, i, tend, to, use, too, many, commas  \n"
p split_sentence.strip
p split_sentence.chomp
# new_obj = split_sentence.split(",")
# puts new_obj.class
# puts new_obj
=end
#puts "============================================================="
print "What is your name: "
first_name = gets.chomp
print "Thank you for answering, #{first_name}. How old are you? "
age = gets.chomp
puts "Wow you're close to being #{age.to_i + 1}!"

