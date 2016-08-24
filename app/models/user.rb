class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :channel
  belongs_to :level
  has_many :comments
  validates :email, presence: true
  has_attachment :picture

  rails_admin do
    edit do
      field :picture do
        partial "upload_pictures"
      end
      field :email
      field :level_id
      field :firstname
      field :lastname
      field :adress
      field :phone
      field :birth
      field :visible
      field :admin
    end
  end
end
