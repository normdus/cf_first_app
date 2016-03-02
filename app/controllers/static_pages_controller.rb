class StaticPagesController < ApplicationController
  
  def landing_page
    @products = Product.limit(3)  # this instance variable is passed to landing_page
  end
  
  
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
        :to => 'duchsysinc@comcast.net',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver_now
  end

# 5.1 Routes redirect...
#  def about
#    redirect_to "/static_pages/contact"
#  end
end


