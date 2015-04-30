class User < ActiveRecord::Base
  # Remember to create a migration!


  # users.password_hash in the database is a :string

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end


# #
# BCrypt::Password.create('magicpanda').to_s
