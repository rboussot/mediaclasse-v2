class Course < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :categories
  has_many :lectures
  has_many :courses_themes
  has_many :themes, through: :courses_themes
  has_many :users_courses
  has_many :users, through: :users_courses
  validates :title, presence: true
  validates :category, presence: true
end
