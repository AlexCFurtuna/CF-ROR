class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    mail(:to => 'alexcfurtuna@gmail.com', :subject => "New Message!")
  end

  def order_placed(email, product, user)
    @email = email
    @product = product
    @user = user
    mail(:to => @email, :subject => "Your order has been placed! You have been charged #{@product.price} for the #{@product.name}. You will be receiving your item soon. Thank you for your purchase!")
  end
end
