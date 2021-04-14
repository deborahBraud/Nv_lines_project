class AddNameToPhenotypes < ActiveRecord::Migration[6.1]
  def self.up
  	add_column :phenotypes, :name, :string
  end

  def self.down
  	remove_column :phenotypes, :name, :string
  end
end
