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

  def name
    email
  end


  ############## replace 'acts_as_voter'
  def add_course course
    self.courses_ids <<= course.id
    save
  end

  def remove_course course
    self.courses_ids -= [course.id]
    save
  end

  def courses_ids
    (self[:courses_ids] || "").split.map(&:to_i)
  end

  def courses_ids= courses_ids
    write_attribute :courses_ids, courses_ids.uniq.join(" ")
  end

  def courses
    Course.where id: courses_ids
  end

  def has_course? course
    courses_ids.include? course.id
  end
  ###########


  rails_admin do
    edit do
      field :picture do
        partial "upload_pictures"
      end
      field :email
      field :admin
      field :collective
      field :plan
      field :stripe_customer_id
      field :pricing
      field :expire do
        strftime_format "%d/%m/%Y"
      end
    end
  end

  rails_admin do
    list do
      field :id
      field :email
      field :plan
      field :expire do
        strftime_format "%d/%m/%Y"
      end
      field :collective
      field :sign_in_count
      field :current_sign_in_at
    end
  end

  rails_admin do
    show do
      field :picture do
        partial "upload_pictures"
      end
      field :id
      field :email
      field :sign_in_count
      field :current_sign_in_at
      field :plan
      field :collective
      field :created_at
      field :updated_at
      field :reset_password_sent_at
      field :visible
      field :deleted
      field :current_sign_in_ip
      field :last_sign_in_ip
      field :pricing
      field :expire do
        strftime_format "%d/%m/%Y"
      end
    end
  end

end
