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
  # scope :id, ->
end
