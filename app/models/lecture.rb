class Lecture < ApplicationRecord
  belongs_to :course

  validates :title, presence:true
  validates :picture, presence:true
  validates :payment, presence:true
end
