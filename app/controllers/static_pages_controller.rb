class StaticPagesController < ApplicationController

  def index
  end

  def landing_page
    @products = Product.limit(30)
  end

  def thank_you
    UserMailer.contact_form(params).deliver_now
  end
end
