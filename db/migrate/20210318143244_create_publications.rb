class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :publication_name
      t.date :publication_date
      t.string :authors
      t.string :pubmed_link
      t.string :doi_link

      t.timestamps
    end
  end
end
