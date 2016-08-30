class Lecture < ApplicationRecord
  belongs_to :course
  has_many :comments
  has_many :documents
  validates :title, presence: true
  def name
    self.course.title+" - "+title
  end
  # scope :id, ->
end
