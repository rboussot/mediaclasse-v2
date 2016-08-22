class Category < ApplicationRecord

  validates :name, presence:true
  validate :name, uniqueness:true
  validates :description, presence: true
end
