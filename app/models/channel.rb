class Channel < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, presence: true, uniqueness: :true
  validates :description, presence: true
  validates :email, presence: true
  has_attachment :picture

    rails_admin do
    edit do
      field :picture do
        partial "upload_pictures"
      end
      field :name
      field :user_id
      field :description
      field :category
      field :email
      field :link
      field :visible
    end
  end
end
