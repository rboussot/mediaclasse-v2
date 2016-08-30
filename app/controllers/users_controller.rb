class UsersController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    @my_courses = @user.find_liked_items.reverse
  end

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

  def like
    @course = Course.find(params[:course_id])
    if params[:liked]
      @course.liked_by current_user
    else
      @course.unliked_by current_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname)
  end
end
