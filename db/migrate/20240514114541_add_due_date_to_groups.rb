class AddDueDateToGroups < ActiveRecord::Migration[7.1]
  def change
    add_column :groups, :due_date, :text
  end
end
