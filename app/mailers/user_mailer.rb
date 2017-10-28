class UserMailer < ApplicationMailer
   
   def welcome_email(user)
     @user = User.create( email:user, password: '123456', password_confirmation:'123456')
     mail(to: 'friend@example.com', from: @user.email, subject: 'You have been invited by me@example.com')
   end
end
