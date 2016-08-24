class Lecture < ApplicationRecord
  belongs_to :course
  has_many :comments
  validates :title, presence: true
  has_attachment :picture

  rails_admin do
    edit do
      field :picture do
        partial "upload_pictures"
      end
      field :course_id
      field :title
      field :video
      field :description
      field :payment
      field :visible
    end
  end
end
