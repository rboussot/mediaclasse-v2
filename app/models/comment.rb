class Comment < ApplicationRecord
  belongs_to :lecture
  belongs_to :user
  validates :content, presence: true
  def name
    self.user.firstname+" : "+content.first(10)
  end
end
