class CoursesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def litterature
    @litterature_courses = Course.joins(:author).joins(:category).where(categories: {tag: "litterature"}).order('pseudo ASC')
  end

  def technique
    @category = Category.find_by_name(params[:category])
    @courses = policy_scope(Course)
    @technique_courses = Course.joins(:category).where(categories: {id: @category.id}).order('title ASC')
    @categories = Category.where(tag: "technique")
  end

  private

  def course_params
    params.require(:product).permit(:author_id, :category_id, :tag, :title, :date, :description, :picture, :visible)
  end

end
