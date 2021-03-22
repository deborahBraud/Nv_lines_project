class AddCityToStaffs < ActiveRecord::Migration[6.1]
  def change
    add_column :staffs, :city, :string
  end
end
