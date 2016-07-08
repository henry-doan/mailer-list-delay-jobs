class SignupMailer < ApplicationMailer

	def new_signup(name, email)
		@name = name
		@email = email

		# override the from:
		# you can add a body:
		mail(to: email, subject: 'Welcome to <My Company>')
	end
	handle_asynchronously :new_signup
end
