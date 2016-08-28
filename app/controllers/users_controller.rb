class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
    redirect_to root_path
  end

  def participation
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname)
  end
end
