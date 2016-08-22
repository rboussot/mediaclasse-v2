class Author < ApplicationRecord
  has_many :courses
  validates :lastname, presence: true
  validates :firstname, presence: true
end
