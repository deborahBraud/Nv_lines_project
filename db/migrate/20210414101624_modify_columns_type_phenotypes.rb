class ModifyColumnsTypePhenotypes < ActiveRecord::Migration[6.1]
  def self.up
  	change_column :phenotypes, :sublocalization_type, :integer
  	change_column :phenotypes, :cell_type, :integer
  end

  def self.down
  	change_column :phenotypes, :sublocalization_type, :string
  	change_column :phenotypes, :cell_type, :string
  end
end
