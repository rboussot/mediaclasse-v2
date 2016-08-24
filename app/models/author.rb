class Author < ApplicationRecord
  has_many :courses
  validates :lastname, presence: true
  validates :firstname, presence: true
  has_attachment :picture

  rails_admin do
    edit do
      field :picture do
        partial "upload_pictures"
      end
      field :lastname
      field :firstname
      field :pseudo
      field :birth
      field :death
    end
  end
end
