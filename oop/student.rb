require_relative 'authn' # allows us to call Authn.<Method name>, but they MUST be self.<method name>

class Student
  include Authn # allows student objects to use methods from Authn, but they CANNOT be self.<method name> (instance methods)

  # attr_accessor auto generates getter and setters
  attr_accessor :username, :first_name, :last_name, :email, :password

  def initialize(username, first_name, last_name, email, password)
    @username = username
    @first_name = first_name
    @last_name = last_name
    @email = email
    @password = password
  end

  def to_s
    "Username: #{@username}
First name: #{@first_name}
Last name: #{@last_name}
Email: #{@email}
Password: #{@password}"
  end

end

tom = Student.new('thillenbrand', 'Thomas', 'Hillenbrand',
                  'tomhillenbrand16@gmail.com', 'password')
puts tom
puts "====================="
tom.password = tom.create_hash_digest(tom.password)

puts tom
