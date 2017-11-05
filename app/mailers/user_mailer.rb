class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    mail(:to => 'alexcfurtuna@gmail.com', :subject => "New Message!")
  end

  def welcome(user)
    @appname = "Murky Art"
    mail(:to => user.email, :subject => "Welcome to #{@appname} !")
  end

  def thank_you(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    mail(:to => 'alexcfurtuna@gmail.com', :subject => "Welcome to Mury Art!")
  end

  def order_placed(user, product)
    @user = user
    @product = product
    mail(:to => @user.mail, :subject => "Your order has been placed! You have been charged #{@product.price} for the #{@product.name}. You will be receiving your item soon. Thank you for your purchase!")
  end
end
