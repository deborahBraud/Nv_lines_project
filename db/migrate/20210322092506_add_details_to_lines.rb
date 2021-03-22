class AddDetailsToLines < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :synonym_line_name, :string
    add_column :lines, :person_in_charge, :string
    add_column :lines, :breeding_type, :string
    add_column :lines, :generation, :int
  end
end
