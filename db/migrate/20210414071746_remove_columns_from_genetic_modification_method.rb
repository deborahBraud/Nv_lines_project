class RemoveColumnsFromGeneticModificationMethod < ActiveRecord::Migration[6.1]
  def self.up
  	remove_column :genetic_modification_methods, :transgenic_construction_type
  	remove_column :genetic_modification_methods, :mutagenic_construction_type
  end

  def self.down	
  	add_column :genetic_modification_methods, :transgenic_construction_type
  	add_column :genetic_modification_methods, :mutagenic_construction_type
  end
end
