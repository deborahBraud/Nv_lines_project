class AddColumnsToGeneticModificationMethods < ActiveRecord::Migration[6.1]
  def self.up
    add_column :genetic_modification_methods, :tag_type, :string
  end

  def self.down
    remove_column :genetic_modification_methods, :tag_type, :string
  end
end
