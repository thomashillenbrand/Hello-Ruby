# frozen_string_literal: true
system 'clear'

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2.to_f
end

def modulus(num1, num2)
  num1 % num2
end

# Methods
def do_math(operation, num1, num2)
  case operation
  when '+'
    "Addition Result: #{add(num1, num2)}"
  when '-'
    "Subtraction Result: #{subtract(num1, num2)}"
  when '*'
    "Multiplication Result: #{multiply(num1, num2)}"
  when '/'
    "Division Result: #{divide(num1, num2)}"
  when '%'
    "Modulus Result: #{modulus(num1, num2)}"
  when 'all'
    "All Results:
  > Addition: #{add(num1, num2)}
  > Subtraction: #{subtract(num1, num2)}
  > Multiplication: #{multiply(num1, num2)}
  > Division: #{divide(num1, num2)}
  > Modulus: #{modulus(num1, num2)}"
  else
    throw("Operation not recognized: #{operation}")
  end
end

def calculator
  # header
  puts 'Simple Calculator'
  20.times { print '=' }
  puts
  # get numbers
  print 'Enter your first number: '
  num1 = gets.chomp.to_i
  print 'Enter your second number: '
  num2 = gets.chomp.to_i

  print 'Please enter your operation (+, -, *, /, %, all): '
  operation = gets.chomp
  while operation != '+' && operation != '-' && operation != '*' && operation != '/' && operation != '%' && operation != 'all'
    print 'Please enter a valid operation (+, -, *, /, %, all): '
    operation = gets.chomp
  end

  # print result
  puts do_math(operation, num1, num2)
  20.times { print '=' }
  puts
end

# run the calculator
calculate = true
while calculate
  calculator
  print 'Would you like to do another calculation (y/n): '
  calculate = gets.chomp.upcase == 'Y'
end
puts 'Thank you for using the calculator. Good bye!'
