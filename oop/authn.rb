module Authn
  require 'bcrypt'
  puts 'Module AUTHN activated'

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.validate_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(user_hash_list)
    user_hash_list.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    user_hash_list
  end

  def self.authenticate_user(username, password, user_hash_list)
    user_hash = user_hash_list.select do |user|
      user[:username] == username.downcase && validate_hash_digest(user[:password]) == password
    end&.first
    if user_hash.nil?
      'Credentials not found'
    else
      user_hash
    end
  end

end




