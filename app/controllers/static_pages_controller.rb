class StaticPagesController < ApplicationController
  
  def landing_page
    @products = Product.limit(3)  # this instance variable is passed to landing_page
  end

# 5.1 Routes redirect...
  def about
#    redirect_to "/static_pages/contact"
  end
end
 puts "********** IN the controller  ******************"
def thank_you
  puts "************* Thank you Method was ******************"
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(
    :from => @email,
    :to => 'norman.duchene@comcast.net',
    :subject => "A new contact form message from #{@name}",
    :body => @message).deliver_now
end