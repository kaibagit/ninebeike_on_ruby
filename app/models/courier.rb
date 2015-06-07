require 'digest/sha2'

class Courier < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password

  validate :password_must_be_present

  def self.encrypt_password(password,salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end

  def password=(password)
    @password = password
    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password,salt)
    end
  end

  private
    def password_must_be_present
      errors.add(:password,"未输入密码") unless hashed_password.present?
    end
    def generate_salt
      self.salt = self.object_id.to_s + rand.to_s
    end

end
