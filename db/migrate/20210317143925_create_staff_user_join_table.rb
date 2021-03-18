class CreateStaffUserJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :staffs, :users do |t|
      # t.index [:staff_id, :user_id]
      # t.index [:user_id, :staff_id]
    end
  end
end
