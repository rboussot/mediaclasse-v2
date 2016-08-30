class Course < ApplicationRecord
  include PgSearch
  pg_search_scope :search,
    against: {
      title: 'A',
      description: 'B'
    },
    associated_against: {
      author: {
        pseudo: 'A',
        firstname: 'B',
        lastname: 'C'
      }
    }
    # using: {
    #   tsearch: {
    #     prefix: true
    #     dictionary: 'english'
    #   }
    #   ignoring: :accents
    # }
  acts_as_votable
  belongs_to :author
  belongs_to :category
  has_many :lectures
  has_many :courses_themes
  has_many :themes, through: :courses_themes
  validates :title, presence: true
end
