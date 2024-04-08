class Document < ApplicationRecord
  belongs_to :lecture
  validates :title, presence: true
  validates :url, presence: true
end

  rails_admin do
    list do
      field :title
      field :url
      field :visible
      field :payment
    end
  end
