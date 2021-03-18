class AddUserIdToLine < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :user_id, :integer
    add_index :lines, :user_id
  end
end
