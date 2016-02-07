class UsersController < ApplicationController
  def show
    # Get the user associated with the id parameter
    @user = User.find(params[:id])
  end

  def new
    # Create a new user instance
    @user = User.new
  end

  def create
    # Create a new user instance with the data from the form
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
