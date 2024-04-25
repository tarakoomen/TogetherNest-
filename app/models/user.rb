class User < ApplicationRecord
  has_many :messages
  has_many :groups, through: :group_users

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  before_validation :strip_email
  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    }
  validates :due_date, presence: true
  validates :post_code, presence: true, numericality: { only_integer: true }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def strip_email
    self.email = email.strip unless email.nil?
  end
end
