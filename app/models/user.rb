class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :channel
  belongs_to :level
  has_many :comments
  validates :email, presence: true
  has_attachment :picture

  def name
    email
  end

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
      field :deleted
      field :collective
      field :plan
      field :stripe_customer_id
    end
  end

  rails_admin do
    list do
      field :id
      field :email
      field :sign_in_count
      field :current_sign_in_at
      field :plan
      field :collective
      field :created_at
      field :updated_at
      field :reset_password_sent_at
      field :deleted
      field :current_sign_in_ip
      field :last_sign_in_ip
    end
  end

end
