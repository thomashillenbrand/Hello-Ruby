require_relative 'authn'
# $LOAD_PATH << '.'
# require 'crud'

users = [
  { username: 'thillenbrand', password: 'password1' },
  { username: 'mwilliams', password: 'password2' },
  { username: 'cpadden', password: 'password3' },
  { username: 'bparks', password: 'password4' },
]

secure_credentials = Authn.create_secure_users(users)
p secure_credentials
