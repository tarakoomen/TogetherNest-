class ChangeColumnsInUserTable < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :new_parent, :mentee_id
    rename_column :users, :mentor, :mentor_id
    remove_column :users, :joined_mentor_program
  end
end
