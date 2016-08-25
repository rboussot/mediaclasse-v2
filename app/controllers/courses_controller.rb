class CoursesController < ApplicationController
  skip_before_action :authenticate_user!
  def litterature
    @litterature = Course.where(tag:"litterature").order('title ASC')
  end

  def technique
    @technique = Course.where(tag:"technique")
  end

  def show
    @course = Course.find(params[:id])
    @courses_lectures = @course.lectures.where(visible: true)
  end

  private

  def course_params
    params.require(:product).permit(:author_id, :category_id, :tag, :title, :date, :description, :picture, :visible)
  end

end
