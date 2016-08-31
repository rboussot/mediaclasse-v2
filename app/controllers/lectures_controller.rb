class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lectures = @lecture_course.lectures
    @lecture_comments = Comment.all.where(lecture: @lecture).joins(:user).order('updated_at DESC')
    @comment = Comment.new
    @documents = Document.where(lecture_id: params[:id])
    skip_authorization
  end

  def like
    @course = Course.find(params[:course_id])
    if params[:liked]
      @course.liked_by current_user
    else
      @course.unliked_by current_user
    end
  end

end
