class Comment < ApplicationRecord
  belongs_to :lecture
  belongs_to :user
  validates :content, presence: true
end
