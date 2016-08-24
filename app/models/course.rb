class Course < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :lectures
  has_many :courses_themes
  has_many :themes, through: :courses_themes
  validates :title, presence: true
end
