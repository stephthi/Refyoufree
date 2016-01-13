class UsersController < ApplicationController
  before_action :ensure_logged_in, only:[:show]

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/sessions/new', notice: "Signed up!"
    else
      render "new"
    end
  end


  def show
    @user = User.find(params[:id])
  end

private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
