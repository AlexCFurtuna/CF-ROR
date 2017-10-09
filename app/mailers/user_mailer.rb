class UserMailer < ActionMailer::Base
  default from: "alex-furtuna.herokuapp.com"

  def contact_form(email, name, message)
    @email = email
    @name = name
    @message = message
    mail(:to => 'alexcfurtuna@gmail.com', :subject => "New contact form")
  end

  def send_enabled_message(user)
    @user = user
    @appname = "Berlin Bikes"
    mail(:to => user.email, :subject => "Welcome to #{@appname} !")
  end

  def welcome(user)
    @appname = "Berlin Bikes"
    mail(:to => user.email, :subject => "Welcome to #{@appname} !")
  end
end
