class CoursesController < ApplicationController

  def litterature
    @litterature = Course.where(tag:"litterature")
  end

  def technique
    @technique = Course.where(tag:"technique")
  end

  private

  def course_params
    params.require(:product).permit(:author_id, :category_id, :tag, :title, :date, :description, :photo, :visible)
  end

end
