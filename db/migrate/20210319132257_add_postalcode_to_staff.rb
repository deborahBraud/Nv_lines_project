class AddPostalcodeToStaffs < ActiveRecord::Migration[6.1]
  def change
    add_column :staffs, :postalcode, :string
  end
end
