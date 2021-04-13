class ChangeLinetypeInInt < ActiveRecord::Migration[6.1]
	def up
	    change_column :lines, :line_type, :int
	  end

	  def down
	    change_column :lines, :line_type, :string
	  end
end
