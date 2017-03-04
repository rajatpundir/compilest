class AdminUser < ApplicationRecord

	has_secure_password

	scope :sorted, lambda {order('superuser DESC, year DESC,section, roll_number, first_name, last_name, username')}
	
	def name
		"#{first_name} #{last_name}"
	end

	validates_presence_of :username, :password, :year, :first_name, :last_name, :section, :roll_number, :email, :user_mobile, :father, :father_occupation, :father_mobile, :mother, :mother_occupation, :mother_mobile, :interests, :goals, :skills, :strengths, :weaknesses

end