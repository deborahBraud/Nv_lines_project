class ChangePehnotypeName < ActiveRecord::Migration[6.1]
  def change
  	rename_column :images, :pehnotype_id, :phenotype_id
  end
end
