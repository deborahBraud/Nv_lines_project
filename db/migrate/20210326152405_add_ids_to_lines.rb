class AddIdsToLines < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :wild_type_background_id, :integer
    add_column :lines, :genetic_modification_method_id, :integer
    add_column :lines, :line_id, :integer
  end
end
