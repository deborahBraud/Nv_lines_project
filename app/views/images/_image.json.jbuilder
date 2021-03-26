json.extract! image, :id, :image, :image_name, :image_legend, :image_date, :microscopy_technique, :lifecycle_stage, :tissu_localization, :cellular_localization, :person_who_takes_image, :objective_used, :line_id, :phenotype_id, :created_at, :updated_at
json.url image_url(image, format: :json)
