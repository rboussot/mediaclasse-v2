class CoursesTheme < ApplicationRecord
  belongs_to :course
  belongs_to :theme
  validates :course, presence: true
  validates :theme, presence: true
end
