class UsersController < ApplicationController

  # def new
  # end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to dashboard_path, notice: "Profile updated"
    else
      render :edit, notice: "Something went wrong, profile was not updated"
    end
  end
  
  # def show
  #   @user = current_user
  # end

  # private

  def user_params
    params.require(:user).permit(:name)
  end
end