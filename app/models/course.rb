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
    end
  end

end
