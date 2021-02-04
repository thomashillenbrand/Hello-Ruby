system 'clear'

puts "+====================================+"
puts "+ Welcome to the Ruby Name Analyzer! +"
puts "+====================================+\n\n"
print "Please enter your first name: "
first_name = gets.chomp
print "Please enter your last name: "
last_name = gets.chomp

full_name = first_name+ " " +last_name
full_name_length = first_name.length.to_i + last_name.length.to_i

puts "Your full name is: #{full_name}"
puts "Your full name reversed is: #{full_name.reverse}"
puts "Your name has #{full_name_length} characters in it!"
if full_name_length >= 15
  puts "Wow, you have a long name!"
end

