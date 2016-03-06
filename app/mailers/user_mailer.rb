class UserMailer < ApplicationMailer
  default from: "rails@careerfoundry.nduchene.info"
  
  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
          :to => "rails@careerfoundry.nduchene.info",
          :subject => "A new contact form message from #{name}")
  end
end
