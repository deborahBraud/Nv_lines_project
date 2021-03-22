class AddCountryToStaffs < ActiveRecord::Migration[6.1]
  def change
    add_column :staffs, :country, :string
  end
end
