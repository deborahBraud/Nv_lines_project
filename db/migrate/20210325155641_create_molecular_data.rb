class CreateMolecularData < ActiveRecord::Migration[6.1]
  def change
    create_table :molecular_data do |t|
      t.string :gene_name
      t.string :genbank_gene_accession_number
      t.string :ensembl_gene_accession_number
      t.string :genome_version_accession_number
      t.string :gene_sequence
      t.string :chromosome_number
      t.string :gene_promoter
      t.string :NvERTx_id
      t.string :locus_insertion
      t.string :mutated_region
      t.integer :genetic_modification_method_id

      t.timestamps
    end
  end
end
