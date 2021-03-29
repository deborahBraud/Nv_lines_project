class AddOfIdsToLines < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :user_id, :integer
    add_column :lines, :group_id, :integer
  end
end
