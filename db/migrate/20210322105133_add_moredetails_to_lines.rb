class AddMoredetailsToLines < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :zygosity, :integer
  end
end
