class Channel < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, presence: true, uniqueness: :true
  validates :description, presence: true
  validates :email, presence: true
end
