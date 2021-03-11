class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.string :staff_header
      t.string :staff_adress
      t.string :institut_name

      t.timestamps
    end
  end
end
