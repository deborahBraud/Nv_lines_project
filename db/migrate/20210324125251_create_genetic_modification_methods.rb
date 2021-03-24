class CreateGeneticModificationMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :genetic_modification_methods do |t|
      t.integer :line_id
      t.integer :transgenic_construction_type
      t.integer :mutagenic_construction_type
      t.string :construction_type_description
      t.string :molecular_tools
      t.string :mutation_type
      t.string :vector_name
      t.string :vector_description
      t.string :reagent_and_protocol

      t.timestamps
    end
  end
end
