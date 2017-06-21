class Comment < ApplicationRecord
  belongs_to :lecture
  belongs_to :user
  validates :content, :user, presence: true, allow_blank: false
  def name
    self.user.email+" : "+content.first(10)
  end
end
