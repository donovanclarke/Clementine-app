class UserMailer < ApplicationMailer
  default from: "service@clementinecourier.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
    :to => 'donovan@donovanclarke.com',
    :subject => "A new contact form message from #{name}")
  end
end