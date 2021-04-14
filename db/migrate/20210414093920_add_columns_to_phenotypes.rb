class AddColumnsToPhenotypes < ActiveRecord::Migration[6.1]
  def self.up
    add_column :phenotypes, :region_type, :integer
  end

  def self.down
    remove_column :phenotypes, :region_type, :integer
  end
end
