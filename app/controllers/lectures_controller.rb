class LecturesController < ApplicationController
  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lectures = @lecture_course.lectures
    @lecture_comments = Comment.all.where(lecture: @lecture)
  end
end
