class Comment < ApplicationRecord
  belongs_to :lecture
  belongs_to :user
  validates :lecture, presence: true
  validates :user, presence: true
  validates :content, presence: true
end
