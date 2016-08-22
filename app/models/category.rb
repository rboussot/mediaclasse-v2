class Category < ApplicationRecord

  validates :name, presence:true
  validates :name, uniqueness:true
  validates :description, presence: true
end
