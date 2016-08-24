class Lecture < ApplicationRecord
  belongs_to :course
  has_many :comments
  validates :title, presence: true
end
