class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.string :line_name
      t.string :synonym_line_name
      t.string :line_type
      t.string :person_in_charge
      t.string :breeding_type
      t.integer :generation

      t.timestamps
    end
  end
end
