json.extract! phenotype, :name, :id, :embryo_letality, :larva_swimming_perturbation, :larva_letality, :metamorphosis_perturbation, :post_metamorphosis_growth, :regeneration, :adult_letality, :adult_fecondity, :other_phenotype_description, :sublocalization_type, :cell_type, :created_at, :updated_at, :region_type
json.url phenotype_url(phenotype, format: :json)
