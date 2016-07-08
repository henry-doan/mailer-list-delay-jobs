class User < ActiveRecord::Base
	after_create :send_welcome_email

	private
		def send_welcome_email
			# Have To use delayed jobs for mail for heroku
			SignupMailer.new_signup(self.name, self.email)
		end
end
