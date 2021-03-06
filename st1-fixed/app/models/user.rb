class User
  include MongoMapper::Document

  before_save :encrypt_password
  
  attr_accessor :password, :password_confirmation

  key :email, String
  key :salt, String
  key :fish, String
  key :code, String

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    
    if user
      fish = BCrypt::Engine.hash_secret(password, user.salt)
      if user.fish == fish
        return user
      end
    end
    nil
  end

  
  private
  
  def validate_confirmation
    unless password == password_confirmation
      errors.add( :password_confirmation, "Passwords do not match.")
    end
  end
  
  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.fish = BCrypt::Engine.hash_secret(password, self.salt)
    end
  end
end
