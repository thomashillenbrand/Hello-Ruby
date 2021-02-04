system 'clear'

dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evantson' => '847',
  'orlando' => '407',
  'lancaster' => '717',
}

def get_city_names(hash)
  hash.keys
end

def get_area_code(hash, key)
  hash[key]
end

def lookup_code(hash)
  # Look up Area Code
  puts 'Select a city to look up area code.'
  get_city_names(hash).each { |city| puts " > #{city}" }
  city = gets.chomp.downcase
  if !hash.include?(city)
    puts "#{city} is not included in this dial book."
  else
    puts "Area code: #{get_area_code(hash, city)}"
  end
  puts
end

def add_new_city(hash)
  # Add new area code
  print 'City: '
  new_city = gets.chomp
  print 'Area Code: '
  new_code = gets.chomp
  hash[new_city]=new_code
  puts 'New city and area code successfully added!'
  puts
end

# Execution flow
puts '+=================================================================+'
puts '+                  Welcome to the Ruby Dial Book!                 +'
puts '+=================================================================+'
puts '+  > Pick a city from the list to look up the area code           +'
puts '+  > Add a new city and its area code to the list                 +'
puts '+=================================================================+'
puts

loop do
  puts 'What would you like to do?'
  puts ' > Look up area code: Press 1'
  puts ' > Add new area code: Press 2'
  puts ' > Press any other key to exit.'
  puts
  print ' > '
  decision = gets.chomp
  puts

  case decision
  when '1'
    lookup_code(dial_book)
  when '2'
    add_new_city(dial_book)
  else
    break
  end
end

puts 'Good Bye!'
