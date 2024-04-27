class User < ApplicationRecord
  has_many :messages
  has_many :groups, through: :group_users
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def strip_email
    self.email = email.strip unless email.nil?
  end
end
