class CreateJoinTableLinePublication < ActiveRecord::Migration[6.1]
  def change
    create_join_table :lines, :publications do |t|
      # t.index [:line_id, :publication_id]
      # t.index [:publication_id, :line_id]
    end
  end
end
