class UsersController < ApplicationController

  def show
    @user = current_user
    authorize @user
    @my_courses = @user.find_liked_items
  end

  def edit
    @user = current_user
    authorize @user
    @channel = @user.channel
  end

  def update
    @user = current_user
    authorize @user
    @user.update(user_params)
    redirect_to edit_user_path
  end

  def participation
  end

  def like
    @course = Course.find(params[:course_id])
    if params[:liked]
      @course.liked_by current_user
      authorize @course
    else
      @course.unliked_by current_user
      authorize @course
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :picture, :email, :adress, :phone, :birth, :level_id, :deleted, :plan, :stripe_user_id, :paydate)
  end
end
