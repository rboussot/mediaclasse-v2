class CoursesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def index
    @courses = policy_scope(Course)

  end

  def litterature
    @courses = policy_scope(Course)
    if params[:search] && params[:search] != ""
      @litterature_courses = Course.search(params[:search]).joins(:author).joins(:category).where(categories: {tag: "litterature"}).reorder('pseudo ASC')
    else
      @litterature_courses = Course.joins(:author).joins(:category).where(categories: {tag: "litterature"}).order('pseudo ASC')
    end
    @documents = Document.joins(:lecture)
    @sidebar_letters = Author.pluck(:pseudo).map{|e| e[0]}.uniq
  end

  def technique
    @category = Category.find_by_name(params[:category])
    @courses = policy_scope(Course)
    @categories = Category.where(tag: "technique")
    if params[:search] && params[:search] != ""
      @technique_courses = Course.search(params[:search]).joins(:category).where(categories: {tag: "technique"}).order('title ASC')
    else
      @technique_courses = Course.joins(:category).where(categories: {id: @category.id}).order('title ASC')
    end
  end

  def like
    @course = Course.find(params[:course_id])
    if params[:liked]
      current_user.add_course @course
    else
      current_user.remove_course @course
    end

    head :ok
  end

  private

  def course_params
    params.require(:product).permit(:author_id, :category_id, :tag, :title, :date, :description, :picture, :visible)
  end

end
