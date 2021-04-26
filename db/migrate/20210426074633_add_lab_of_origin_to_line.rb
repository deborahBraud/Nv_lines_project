class AddLabOfOriginToLine < ActiveRecord::Migration[6.1]
  def self.up
  	add_column :lines, :lab_of_origin, :string
  end

  def self.down
  	remove_column :lines, :lab_of_origin, :string
  end	
end
