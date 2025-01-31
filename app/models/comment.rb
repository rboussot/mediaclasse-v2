class Comment < ApplicationRecord
  belongs_to :lecture, optional: true
  belongs_to :user
  has_many :subcomments
  validates :content, :user, presence: true, allow_blank: false
  def name
    self.user.email+" : "+content.first(10)
  end
end
