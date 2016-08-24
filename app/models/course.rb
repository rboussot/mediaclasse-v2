class Course < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :lectures
  has_many :courses_themes
  has_many :themes, through: :courses_themes
  validates :title, presence: true
  has_attachment :picture

  rails_admin do
    edit do
      field :picture do
        partial "upload_pictures"
      end
      field :author_id
      field :title
      field :date
      field :description
      field :category_id
      field :visible
      field :tag
    end
  end

end
