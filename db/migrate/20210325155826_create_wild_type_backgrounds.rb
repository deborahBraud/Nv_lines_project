class CreateWildTypeBackgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :wild_type_backgrounds do |t|
      t.text :sampling_conditions
      t.string :sampling_geographical_zone
      t.text :supplementary_information

      t.timestamps
    end
  end
end
