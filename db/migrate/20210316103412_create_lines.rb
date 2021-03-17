class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.string :line_name
      t.string :line_type

      t.timestamps
    end
  end
end
