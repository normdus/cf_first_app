class StaticPagesController < ApplicationController
  
  def landing_page
    @products = Product.limit(3)  # this instance variable is passed to landing_page
  end

# 5.1 Routes redirect...
  def about
#    redirect_to "/static_pages/contact"
  end
end