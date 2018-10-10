class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #log the user into the site on creation
      log_in @user
      flash[:success] = "Welcome to the pngCrypt!"
      #the following line redirects to the user profile
      #redirect_to @user
      #the following line redirects to the application page
      redirect_to stenApp_path
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end