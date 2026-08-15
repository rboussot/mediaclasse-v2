class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lecture_author = @lecture_course.author&.pseudo.presence || @lecture_course.author&.name.presence || "Mediaclasse"
    @lectures = @lecture_course.lectures.order('title ASC').where(visible: true)
    @documents = Document.where(lecture_id: params[:id]).where(visible:true)
    skip_authorization

    # Définition des balises META
    # D'abord on ne référence pas les contenus masqués
    unless @lecture.visible?
      @noindex = true
    end
    # Construction du meta_title
    raw_title = "#{@lecture_course.title}, #{@lecture_author} #{@lecture.title.gsub(/<.*?>/,"")} | Mediaclasse"
    @meta_title = CGI.unescapeHTML(raw_title).gsub('&nbsp;', ' ').squish
    # Construction de la meta_description
          doc = Nokogiri::HTML::DocumentFragment.parse(@lecture.description.to_s)
          doc.css('h1, blockquote, bq').remove
          raw_text = CGI.unescapeHTML(doc.text).gsub('&nbsp;', ' ').squish
          if raw_text =~ /problématique\s*[:\?–-]?\s*(.+)/i
            description_candidate = $1.strip
          else
            doc.css('h2, h3, h4').remove
            description_candidate = CGI.unescapeHTML(doc.text).gsub('&nbsp;', ' ').squish
          end
          @meta_description = description_candidate.squish.truncate(155, separator: ' ')
    # Récupération de la meta_picture avec solutions de repli
    @meta_image = @lecture.picture.presence || @lecture_course&.picture.presence || helpers.image_url('og-default.jpg')
    # Message d'invitation à l'abonnement.
    if Category.exists?(tag: "message")
      @message_plan = Category.where(tag: "message").last.description
    else
      @message_plan = "Super ! Voir les conditions pour accéder à toutes les ressources !"
    end
    @description_for_subscribers = @lecture.description.gsub("\n", "<br/>").split("[/]").join(" ").to_s.html_safe
    @description_for_free = @lecture.description.gsub("\n", "<br/>").split("[/]")[0..0].join(" ").to_s.html_safe
    @description_title = @lecture.description.gsub("\n", "<br/>").split("<br/>")[0..1].join('<br/>').to_s.html_safe
    if @lecture.picture
      # @legend = @lecture.picture.partition('images/').last[0...-4].gsub("+"," ").gsub("%2C",",").gsub("%C3%A8","è").gsub("%C3%A9","é")+"."
      @legend = CGI.unescape(@lecture.picture.partition('images/').last[0...-4])+"."
    end
  end

end
