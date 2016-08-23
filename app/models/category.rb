class Category < ApplicationRecord
  has_many :courses
  has_many :channels
  validates :name, presence: true, uniqueness: :true
end
