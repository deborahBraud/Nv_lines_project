class ModifyColumnsPhenotypes < ActiveRecord::Migration[6.1]
  def change
  	rename_column :phenotypes, :tissu_localization, :sublocalization_type
  	rename_column :phenotypes, :cell_localization, :cell_type
  end

end
