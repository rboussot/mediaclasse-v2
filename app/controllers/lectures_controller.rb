class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lecture_course.author ? @lecture_author = @lecture.course.author.name.to_s : @lecture_author = "Mediaclasse"
    @lectures = @lecture_course.lectures.order('updated_at ASC').where(visible: true)
    @documents = Document.where(lecture_id: params[:id])
    skip_authorization
  end

end
