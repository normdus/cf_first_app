# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

  # Sendgrid Plugin for email setup ....
  ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['rails@careerfoundry.nduchene.info'],
    :password => ENV['norm3488'],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
  }