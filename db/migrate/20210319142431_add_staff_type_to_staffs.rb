class AddStaffTypeToStaffs < ActiveRecord::Migration[6.1]
  def change
    add_column :staffs, :staff_type, :integer
  end
end
