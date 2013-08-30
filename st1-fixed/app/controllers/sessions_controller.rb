class SessionsController < ApplicationController

def new 
	render 'signin/index'
end

  def create
  	
    if params[:user][:password].blank?


      user = User.where(params[:user].permit(:email)).first
      
      if user
        user.code = SecureRandom.urlsafe_base64
        user.expires_at = Time.now + 4.hours
        user.save
        
        # # Send the password reset email with the coded link
        # PasswordMailer.reset_email(user).deliver
      end

      render 'signin/index'
    else
      user = User.authenticate(params[:user][:email], params[:user][:password])
      
      if user
        session[:user_id] = user.id
        redirect_to root_url, notice: "You've successfully logged in!"
      else
        render 'signin/index'
      end
    end
  end

end