class DropLines < ActiveRecord::Migration[6.1]
  def change
  	drop_table :lines
  end
end
