json.extract! molecular_datum, :id, :gene_name, :genbank_gene_accession_number, :ensembl_gene_accession_number, :genome_version_accession_number, :gene_sequence, :chromosome_number, :gene_promoter, :NvERTx_id, :locus_insertion, :mutated_region, :genetic_modification_method_id, :created_at, :updated_at
json.url molecular_datum_url(molecular_datum, format: :json)
