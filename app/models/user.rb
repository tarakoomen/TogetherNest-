class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :group_users
  has_many :groups, through: :group_users, dependent: :destroy
  belongs_to :mentor, class_name: "User", optional: true
  has_one :mentee, class_name: "User", foreign_key: :mentee_id

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  before_validation :strip_email
  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    }
  validates :photo, presence: true

  validate :can_become_mentor?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def strip_email
    self.email = email.strip unless email.nil?
  end

  def can_become_mentor?
    if is_mentor_changed?(from: false, to: true) && mentor_id.present?
      errors.add(:base, :invalid, message: "You cannot become a mentor when you're a mentee")
    end
  end
end
