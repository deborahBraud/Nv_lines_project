class CreatePhenotypes < ActiveRecord::Migration[6.1]
  def change
    create_table :phenotypes do |t|
      t.float :embryo_letality
      t.boolean :larva_swimming_perturbation
      t.float :larva_letality
      t.boolean :metamorphosis_perturbation
      t.string :post_metamorphosis_growth
      t.string :regeneration
      t.float :adult_letality
      t.float :adult_fecondity
      t.string :other_phenotype_description
      t.string :tissu_localization
      t.string :cell_localization

      t.timestamps
    end
  end
end
