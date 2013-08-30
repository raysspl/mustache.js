class UsersController < ApplicationController

before_action :is_authenticated, only: [ :index, :show ]
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    
    if @user
      redirect_to users_path, status: 303
    else
      render :new
    end
  end

 private
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
