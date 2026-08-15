# app/views/sitemaps/index.xml.builder
xml.instruct! :xml, version: "1.0", encoding: "UTF-8"
xml.urlset xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9" do

  # 1. Page d'accueil
  xml.url do
    xml.loc root_url # Génère https://www.mediaclasse.fr/
    xml.changefreq "daily"
    xml.priority "1.0"
  end

  # 2. Toutes les leçons publiques et visibles
  @lectures.each do |lecture|
    xml.url do
      xml.loc lecture_url(lecture) # Génère https://www.mediaclasse.fr/lectures/4936
      xml.lastmod lecture.updated_at.strftime("%Y-%m-%d")
      xml.changefreq "monthly"
      xml.priority "0.9"
    end
  end

end