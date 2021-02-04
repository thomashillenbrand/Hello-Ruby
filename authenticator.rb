system 'clear'

# Authenticator App
# Input: UserName, Password

def load_users
  [
    { username: 'thillenbrand', password: 'password1' },
    { username: 'mwilliams', password: 'password2' },
    { username: 'cpadden', password: 'password3' },
    { username: 'bparks', password: 'password4' },
  ]
end

def get_authenticating_user(users)
  print 'Enter a Username: '
  username = gets.chomp.downcase
  user_hash = users.select { |userhash| userhash[:username] == username }
  puts "User not found: #{username}" if user_hash.empty?
  return user_hash
end

def validate_password(password)
  attempts = 0
  valid = false
  while attempts < 5 && !valid
    if attempts.positive?
      print "Enter password (#{5 - attempts} attempts remaining): "
    else
      print 'Enter password: '
    end
    password_attempt = gets.chomp
    valid = password_attempt == password
    attempts += 1
  end
  return valid
end

def authenticate
  users = load_users
  user_hash = []
  user_hash = get_authenticating_user(users) while user_hash.empty?
  if validate_password(user_hash.first[:password])
    puts 'Successfully Authenticated!'
    puts user_hash
  else
    puts 'Too many incorrect attempts, you have been locked out.'
  end
end

puts '+=================================================================+'
puts '+                Welcome to the Ruby Authenticator!               +'
puts '+=================================================================+'
puts '+  > Enter a username and password to log in.                     +'
puts '+  > Usernames are case insensitive.                              +'
puts '+  > You will be locked out after 5 incorrect password attempts.  +'
puts '+=================================================================+'
puts

authenticate
puts 'Good Bye!'





