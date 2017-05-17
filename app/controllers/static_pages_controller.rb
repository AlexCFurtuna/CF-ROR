class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(3)
    redirect_to "static_pages/about"
  end

end
