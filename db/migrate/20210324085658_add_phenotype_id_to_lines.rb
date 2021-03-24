class AddPhenotypeIdToLines < ActiveRecord::Migration[6.1]
  def change
    add_column :lines, :phenotype_id, :integer
  end
end
