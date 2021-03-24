class CreateStaffUserJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :staffs, :users, :id => false do |t|
      t.integer :staff_id
      t.integer :user_id
    end
  end
end
