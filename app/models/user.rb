class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :channel
  has_many :users_courses
  has_many :users_lectures
  has_one :level
  has_many :comments
  has_many :courses, through: :users_courses
  has_many :lectures, through: :users_lectures
  validates :email, presence: true
end
