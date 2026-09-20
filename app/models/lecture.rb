class Lecture < ApplicationRecord
  belongs_to :course
  has_many :comments
  has_many :documents
  validates :title, presence: true

  def name
    if course && course.title
      self.course.title+" - "+title
    end
  end

  def meta_image
    if self.payment
      "https://r2.mediaclasse.fr/couvertures/mediaclasse-capture.jpg"
    else
      "http://img.youtube.com/vi/"+self.video+"/sddefault.jpg"
    end
  end
  # scope :id, ->
end
