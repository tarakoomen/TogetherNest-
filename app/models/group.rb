class Group < ApplicationRecord
  has_many :messages
  has_many :users, through: :group_users

  validates :name, presence: true
  validates :group_type, presence: true
  validate :valid_group_types
  validates :post_code, presence: true, if: :parent_community?

  # def self.sorted_by_post_code_similarity(user_post_code)
  #   @user_post_code = current_user.post_code
  #   all_groups = all.includes(:users)
  #   sorted_groups = all_groups.sort_by do |group|
  #     -1 * hamming_distance(group.post_code.to_s, user_post_code.to_s)
  #   end
  #   sorted_groups.take(3)
  # end

  private

  def valid_group_types
    allowed_group_types = ['parent community', 'private messaging', 'mentor']
    unless allowed_group_types.include?(self.group_type)
      errors.add(:group_type, "must be one of: #{allowed_group_types.join(', ')}")
    end
  end

  def parent_community?
    group_type == 'parent community'
  end

  # def hamming_distance(str1, str2)
  #   raise ArgumentError, "Strings must have the same length" unless str1.length == str2.length

  #   distance = 0
  #   str1.chars.zip(str2.chars).each do |char1, char2|
  #     distance += 1 if char1 != char2
  #   end
  #   distance
  # end
end
