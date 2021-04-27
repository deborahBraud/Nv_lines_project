class ChangeTypeOtherPhenotypeDescription < ActiveRecord::Migration[6.1]
	def self.up
	    change_column :phenotypes, :other_phenotype_description, :text
	  end

	  def self.down
	    change_column :phenotypes, :other_phenotype_description, :string
	  end
end
