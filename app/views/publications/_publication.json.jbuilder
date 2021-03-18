json.extract! publication, :id, :publication_name, :publication_date, :authors, :pubmed_link, :doi_link, :created_at, :updated_at
json.url publication_url(publication, format: :json)
