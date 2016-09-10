class Level < ApplicationRecord
  has_many :users
  has_many :themes
  validates :name, presence: true, uniqueness: :true
end
