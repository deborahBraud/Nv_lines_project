class CreateImages < ActiveRecord::Migration[6.1]
  def change 
    create_table :images do |t|
      t.string :image
      t.string :image_name
      t.string :image_legend
      t.date :image_date
      t.string :microscopy_technique
      t.string :lifecycle_stage
      t.string :tissu_localization
      t.string :cellular_localization
      t.string :person_who_takes_image
      t.string :objective_used
      t.integer :line_id
      t.integer :pehnotype_id

      t.timestamps
    end
  end
end
