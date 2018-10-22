class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:stenApp]
  
  def home
  end

  def help
  end
  
  def about
  end

  def contact
  end

  def stenApp
  
  end

  private
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "You must be logged in to use this feature. Please login or make an account."
        redirect_to login_url
      end
    end
end
