class AddColumnsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :bio, :text
    add_column :users, :due_date, :date
    add_column :users, :post_code, :integer
    add_column :users, :parent_experience, :decimal
    add_column :users, :is_mentor, :boolean, default: false
    add_column :users, :joined_mentor_program, :boolean, default: false
    add_column :users, :new_parent, :integer
    add_column :users, :mentor, :integer
  end
end
