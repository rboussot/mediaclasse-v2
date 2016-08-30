class Author < ApplicationRecord
  has_many :courses
  validates :lastname, presence: true
  validates :firstname, presence: true
  def name
    pseudo
  end
end
