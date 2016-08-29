class UsersController < ApplicationController
  skip_after_action :verify_authorized

  def edit
    @user = current_user
    @channel = Channel.where(user_id: current_user)
  end

  def update
    @user = current_user
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
