class User < ActiveRecord::Base

	has_many :cars
	has_secure_password

	validates_uniqueness_of :username, :message=>"Username has already been taken!"

end