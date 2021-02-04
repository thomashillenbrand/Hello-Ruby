# First Ruby Program

# calls the clear command for the terminal
system 'clear'
=begin

##############################
# PRINTING: HELLO WORLD

# puts = putstring (with carraige return)
puts 'Hello World'
puts 'My name is Tom'

# print without a carriage return
print 'Hello World'
puts ', my name is Tom!'

# ############################
# STRING MANIPULATION

puts 'Hello World'
puts 'Hello World'.downcase
puts 'Hello World'.upcase
puts 'Hello World'.capitalize
puts 'Hello World'.length
puts 'Hello World'.reverse
# a ton more string methods...

# #############################
# VARIABLES
#  - user underscores, not camel case
#  - no capital letters (those are for classes)

first_name = 'Tom'
last_name = 'Hillenbrand'

puts first_name + ' ' + last_name
puts "#{first_name} #{last_name}"

# ###############################
# USER INPUT
#  - gets, grabs the input form the console/command line
#  - puts carriage return on there, but can use chomp to remove.
#
print "What's your name: "
name = gets.chomp
print "Hello, #{name}, how old are you: "
num_1=gets.to_i
print "So you are #{num_1} years old now, but will be #{num_1+1} soon?"
puts

# #######################
# Assignment operators

age = 2
puts age
puts age+=2
puts age **= 2
puts age /= 4
puts age+=1
puts age+1

# ################################
# IF/Else Conditionals
# - can use parentheses, but not required
print "Enter a number 1-10: "
num = gets.to_i
if num > 5
  puts "#{num} is greater than 5!"
elsif num == 5
  puts "#{num} is equal to 5!"
elsif num > 10 || num.negative?
  puts "#{num} is not in range!"
else
  puts "#{num} is greater than 5!"
end

# #######################################
# Arrays
#
names = ["Tom", "Tim", "Jim", "James"]
puts names
puts names.length
puts "==="
names[2] = "Timothy"
puts names
puts names.length

nums=[1, 2, 3, 4]
names[4] = nums
puts names
puts names.length
puts names[names.length-1][2]
puts "================"
names = names.reverse

names[7] = "Kate"
puts names
puts "====="
puts names.length

# ########################################
# LOOPS
#

# While Loops:

num = 0
while num < 10
  puts num
  num +=1
end

# Each loops

(1..5).each do |num|
  puts "I Love cheese"
end

names = ["John", "Tim", "Mary"]
names.each do |name|
  puts name
end

# ##########################
# HASHES
#  - just a map
#  - => "hash rocket"
# - key value pair, key and value can be any object

johns_pizzas = ["pep", "sausage", "marg"]
favorite_pizza = {
  1 => johns_pizzas,
  "Tim" => "Mushroom",
  "Mary" => "Cheese"
}

puts favorite_pizza[1]

# ###########################
# FIZZBUZZ
#
(1..100).each do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "#{num}. FIZZBUZZ!"
  elsif num % 3 == 0
    puts "#{num}. FIZZ!"
  elsif num % 5 == 0
    puts "#{num}. BUZZ!"
  else
    puts "#{num}."
  end
end

count=1
fizzbuzz_string=""
while count <= 100
  if count%3==0
    fizzbuzz_string+="FIZZ"
  end
  if count%5==0
    fizzbuzz_string+="BUZZ"
  end
  puts "#{count}. #{fizzbuzz_string}"
  count +=1
  fizzbuzz_string=""
end

# Can use a chained ternary operator:
(1..100).each do |num|
  puts "#{num}. #{num%15==0?"FB":num%3==0?"F":num%5==0?"B":""}"
end

# ##############################
# METHODS
# - Top down, so put methods at the top
#

def hello()
  puts "Hello World!"
end

def hello_name(first_name, last_name)
  return "Hello, #{first_name} #{last_name}!"
end

hello
first_name = "Tom"
last_name = "Hillenbrand"
full_name = hello_name(first_name, last_name)
puts full_name.upcase

=end

# ###############################
# CLASSES
#
class Square

  # # auto fills in getter
  # attr_reader :side_length
  # # auto generates setter
  # attr_writer :side_length
  # auto generates getter AND setter
  attr_accessor :side_length # can add any other parameters here

  # always need initialize method
  def initialize(side_length)
    #instance variable
    @side_length = side_length
  end

  # Don't need the below since we have the attr_accessor
  # # getter
  # def side_length
  #   return @side_length
  # end
  #
  # # setter --> convention calls for equals sign in  setter name
  # def side_length=(side_length)
  #   @side_length = side_length
  # end

  # class method
  def area
    return @side_length * @side_length
  end

  def perimeter
    return @side_length*4
  end

  # to string method will be returned when printing object
  def to_s
    return "Side Length: #{@side_length}\nPerimeter: #{perimeter}\nArea: #{area}"
  end

  # create a draw method
  def draw
    puts "* " * @side_length
    (@side_length-2).times do # times loop will do something X number of times
      print "*"+(" "*(@side_length*2-3))+"*\n"
    end
    puts "* " * @side_length
  end

end

# calls the initialize method
my_square = Square.new(10)
puts my_square.inspect # this will print out some info about the object
puts my_square
puts my_square.draw

my_square.side_length=(20)
puts my_square.inspect # this will print out some info about the object
puts my_square
puts my_square.draw