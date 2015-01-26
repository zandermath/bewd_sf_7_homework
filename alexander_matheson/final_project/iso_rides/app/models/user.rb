class User < ActiveRecord::Base
	#downcase all user emails
	before_save { self.email = email.downcase }

	#check for name presence and length<50
	validates :name, presence: true, length: { maximum: 50 }
	
	#check email format is proper, length <250
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }

	#implement password functionality and validate for length
	has_secure_password
	validates :password, length: { minimum: 6 }
end
