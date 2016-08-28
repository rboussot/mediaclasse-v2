class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lectures = @lecture_course.lectures
    @lecture_comments = Comment.all.where(lecture: @lecture).joins(:user)
    @comment = Comment.new
    skip_authorization
    @documents = Document.where(lecture_id: params[:id])
  end

end
