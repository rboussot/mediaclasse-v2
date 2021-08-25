class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lecture_course.author ? @lecture_author = @lecture.course.author.name.to_s : @lecture_author = "Mediaclasse"
    @lectures = @lecture_course.lectures.order('updated_at ASC').where(visible: true)
    @documents = Document.where(lecture_id: params[:id])
    skip_authorization
    @meta_title = @lecture_course.title+" de "+@lecture_author+" : "+@lecture.title+" (Explications et commentaires détaillés)"
    @description_for_subscribers = @lecture.description.gsub("\n", "<br/>").split("[/]").join(" ").to_s.html_safe
    @description_for_free = @lecture.description.gsub("\n", "<br/>").split("[/]")[0..0].join(" ").to_s.html_safe
    @description_title = @lecture.description.gsub("\n", "<br/>").split("<br/>")[0..1].join('<br/>').to_s.html_safe
  end

end
