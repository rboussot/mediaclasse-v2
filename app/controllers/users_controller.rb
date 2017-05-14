class UsersController < ApplicationController

  def show
    @user = current_user
    authorize @user
    @my_courses = @user.courses
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
      current_user.add_course @course
      authorize @course
    else
      current_user.remove_course @course
      authorize @course
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :picture, :email, :adress, :phone, :birth, :level_id, :deleted, :plan, :stripe_user_id, :paydate)
  end
end
