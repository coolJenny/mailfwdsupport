class UserMailer < ApplicationMailer
	default from: 'notification@alexanderenterprises.com'

	def welcome_email(user, message)
		@user = user
		@message = message
		@url = 'mailfwdsupport.herokuapp.com'
		mail(to: @user.email, subject: @message)

		# recipients    user.email
		# from          "My Awesome Site Notifications <notifications@example.com>"
		# subject       "Welcome to My Awesome Site"
		# sent_on       Time.now
		# body          {:user => user, :url => "http://example.com/login"}
	end

	def receive(email)
		page = Page.find_by(address: email.to.first)
		page.emails.create(
			subject: email.subject,
			body: email.body
			)

		if email.has_attachments?
			email.attachments.each do |attachment|
				page.attachments.create({
					file: attachment,
					description: email.subject
					})
			end
		end
	end

	def registration_confirmation(user)
		recipients  user.email
		from        "webmaster@example.com"
		subject     "Thank you for Registering"
		body        :user => user
	end

	def contact_me(message)
		@body = message.body
		mail to: "steven@fba.support", from: message.email, 'Reply-to': message.email, subject: "FBA.Support question from " + message.name
		mail to: "coolJenny009g@gmail.com", from: message.email, 'Reply-to': message.email, subject: "FBA.Support question from " + message.name + "-(" + message.email + ")"
	end

end
