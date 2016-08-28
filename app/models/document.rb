class Document < ApplicationRecord
  belongs_to :lecture
  validates :title, presence: true
  validates :url, presence: true
end
