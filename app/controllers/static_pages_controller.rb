class StaticPagesController < ApplicationController
  
  def landing_page
    @products = Product.limit(3)  # this instance variable is passed to landing_page
  end
end
