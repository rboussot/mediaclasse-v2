class Theme < ApplicationRecord
  has_many :courses_themes
  has_many :courses, through: :courses_themes
  validates :name, presence: true, uniqueness: :true
end
