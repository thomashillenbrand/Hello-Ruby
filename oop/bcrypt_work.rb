require 'bcrypt'

# hash a user's password
password = BCrypt::Password.create("my grand secret", :cost => 10)

puts password
puts password.version
puts password.cost
puts password.salt
puts password == "my grand secret"
puts password == "paltry guess"

puts "================"

updated_password = BCrypt::Password.new(password)
puts updated_password
puts updated_password.version
puts updated_password.cost
puts updated_password.salt
puts updated_password == "my grand secret"
puts updated_password == "paltry guess"

puts "================"

puts password
puts updated_password
puts updated_password == password

