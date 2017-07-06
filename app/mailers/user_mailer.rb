class UserMailer < ActionMailer::Base
  default from: "alex-furtuna.herokuapp.com"
  def send_enabled_message(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Berlin Bikes!!!")
  end
  def send_new_user_message(user)
    @user = user
    mail(:to => 'alexcfurtuna@gmail.com', :subject => "New User created please review and enable.")
  end
end
