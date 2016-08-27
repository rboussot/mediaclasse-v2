class CoursesController < ApplicationController
  skip_before_action :authenticate_user!
  def litterature
    @litterature_courses = Course.joins(:author).joins(:category).where(categories: {tag: "litterature"}).order('pseudo ASC')
  end

  def technique
    @courses = Course.all
    @technique_courses = Course.joins(:category).where(categories: {id: params[:format]}).order('title ASC')
    @categories = Category.where(tag: "technique")
  end

  private

  def course_params
    params.require(:product).permit(:author_id, :category_id, :tag, :title, :date, :description, :picture, :visible)
  end

end
