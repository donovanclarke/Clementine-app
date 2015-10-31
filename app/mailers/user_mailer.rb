class UserMailer < ApplicationMailer
  default from: "service@clementinecourier.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
    :to => 'donovan@donovanclarke.com',
    :subject => "A new contact form message from #{name}")
  end

  def welcome_email(user)
    @user = user
    mail(:from =>'service@clementinecourier.com',
      :to => "#{user.email}",
      :subject => "Welcome. Thank you for registering!")
  end
end
