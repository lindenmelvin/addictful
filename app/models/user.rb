class User < ActiveRecord::Base
	# attr_accessible :password_confirmation
	has_secure_password

end