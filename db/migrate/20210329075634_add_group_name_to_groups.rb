class AddGroupNameToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :group_name, :string
  end
end
