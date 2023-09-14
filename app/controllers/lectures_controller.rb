class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lecture_course.author ? @lecture_author = @lecture.course.author.name.to_s : @lecture_author = "Mediaclasse"
    @lectures = @lecture_course.lectures.order('title ASC').where(visible: true)
    @documents = Document.where(lecture_id: params[:id])
    skip_authorization

    @meta_title = (@lecture_course.title+", "+@lecture_author+" : "+@lecture.title+
    " (Explications et commentaires détaillés)").gsub(/<.*?>/,"").gsub!(160.chr("UTF-8")," ").html_safe

    @description_for_subscribers = @lecture.description.gsub("\n", "<br/>").split("[/]").join(" ").to_s.html_safe
    @description_for_free = @lecture.description.gsub("\n", "<br/>").split("[/]")[0..0].join(" ").to_s.html_safe
    @description_title = @lecture.description.gsub("\n", "<br/>").split("<br/>")[0..1].join('<br/>').to_s.html_safe
    if @lecture.picture
      # @legend = @lecture.picture.partition('images/').last[0...-4].gsub("+"," ").gsub("%2C",",").gsub("%C3%A8","è").gsub("%C3%A9","é")+"."
      @legend = CGI.unescape(@lecture.picture.partition('images/').last[0...-4])+"."
    end

  end

end
