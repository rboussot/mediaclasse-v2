class LecturesController < ApplicationController
  def show
    @course = Course.find(params[:id])
    @lectures = @course.lectures
    @lecture = @lectures.first
  end
end
