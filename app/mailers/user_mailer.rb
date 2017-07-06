class UserMailer < ActionMailer::Base
  default from: "alex-furtuna.herokuapp.com"

  def send_enabled_message(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Berlin Bikes!!!")
  end

  def welcome(user)
    @appname = "alex-furtuna"
    mail(:to => user.email, :subject => "Welcome to #{@appname}!")
  end  
end
