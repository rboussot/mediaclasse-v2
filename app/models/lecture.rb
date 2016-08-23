class Lecture < ApplicationRecord
  belongs_to :course
  has_many :comments
  has_many :users_lectures
  has_many :lectures, through: :users_lectures
  validates :title, presence: true
end
