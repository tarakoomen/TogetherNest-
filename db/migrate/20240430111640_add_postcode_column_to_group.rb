class AddPostcodeColumnToGroup < ActiveRecord::Migration[7.1]
  def change
    add_column :groups, :post_code, :integer
    change_column :groups, :group_type, :string, default: "parent community"
  end
end
