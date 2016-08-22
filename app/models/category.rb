class Category < ApplicationRecord

  validates :address, presence: true uniqueness:true
end
