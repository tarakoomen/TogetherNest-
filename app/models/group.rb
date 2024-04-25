class Group < ApplicationRecord
  has_many :messages
  has_many :users, through: :group_users

  validates :name, presence: true
  validates :group_type, presence: true
  validate :valid_group_types

  private

  def valid_group_types
    allowed_group_types = ['parent community', 'private messaging', 'mentor']
    unless allowed_group_types.include?(self.group_type)
      errors.add(:group_type, "must be one of: #{allowed_group_types.join(', ')}")
    end
  end
end