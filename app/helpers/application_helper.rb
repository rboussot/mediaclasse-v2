module ApplicationHelper

  def schema_json_ld
    brand_logo = image_url('logo.png')

    schemas = []

    # 1. Déclaration de l'Organisation (sur toutes les pages)
    organization_schema = {
      "@context": "https://schema.org",
      "@type": "EducationalOrganization",
      "name": "Mediaclasse",
      "url": "https://www.mediaclasse.fr",
      "logo": brand_logo,
      "description": page_description,
      "sameAs": [
        "https://www.youtube.com/@mediaclasse",
        "https://www.instagram.com/mediaclasse",
        "https://www.tiktok.com/@mediaclasse"
      ]
    }

    if @lecture.present?
      clean_title = ActionController::Base.helpers.strip_tags(@lecture.title.to_s).gsub(/<.*?>/, '').squish
      lecture_title = CGI.unescapeHTML(clean_title).squish

      # 2. Schéma du Cours / Leçon
      course_schema = {
        "@context": "https://schema.org",
        "@type": "Course",
        "name": "#{lecture_title} (#{@lecture_course&.title})",
        "description": page_description,
        "inLanguage": "fr-FR",
        "provider": organization_schema
      }

      if @lecture.respond_to?(:video) && @lecture.video.present?
        # Date de publication : on prend la date de la leçon au format YYYY-MM-DD
        upload_date = @lecture.created_at&.strftime('%Y-%m-%d') || "2026-01-01"
        course_schema["hasPart"] = {
          "@type": "VideoObject",
          "name": page_title,
          "description": page_description,
          "thumbnailUrl": page_image,
          "embedUrl": "https://www.youtube.com/embed/#{@lecture.video}",
          "uploadDate": upload_date
        }
      end

      schemas << course_schema

      # 3. Schéma du Fil d'Ariane (BreadcrumbList)
      breadcrumb_items = [
        {
          "@type": "ListItem",
          "position": 1,
          "name": "Accueil",
          "item": "https://www.mediaclasse.fr"
        }
      ]

      # Si le cours parent existe, on l'ajoute en étape 2
      if @lecture_course.present?
        breadcrumb_items << {
          "@type": "ListItem",
          "position": 2,
          "name": @lecture_course.title,
          "item": "https://www.mediaclasse.fr/courses/#{@lecture_course.id}" # Ajuste le path de ton cours si besoin
        }
      end

      # Étape finale : la leçon actuelle
      breadcrumb_items << {
        "@type": "ListItem",
        "position": breadcrumb_items.length + 1,
        "name": lecture_title,
        "item": "https://www.mediaclasse.fr/lectures/#{@lecture.id}"
      }

      breadcrumb_schema = {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": breadcrumb_items
      }

      schemas << breadcrumb_schema
    else
      # Sur la page d'accueil et autres pages
      schemas << organization_schema
    end

    # Génération des balises <script>
    schemas.map { |schema| content_tag(:script, schema.to_json.html_safe, type: 'application/ld+json') }.join("\n").html_safe
  end

  def page_title
    content_for(:title).presence || @meta_title.presence || meta_title
  end

  def page_description
    content_for(:description).presence || @meta_description.presence || meta_description
  end

  def page_image
    content_for(:image).presence || @meta_image.presence || meta_image
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
