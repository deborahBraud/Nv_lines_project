require "application_system_test_case"

class MolecularDataTest < ApplicationSystemTestCase
  setup do
    @molecular_datum = molecular_data(:one)
  end

  test "visiting the index" do
    visit molecular_data_url
    assert_selector "h1", text: "Molecular Data"
  end

  test "creating a Molecular datum" do
    visit molecular_data_url
    click_on "New Molecular Datum"

    fill_in "Nvertx", with: @molecular_datum.NvERTx_id
    fill_in "Chromosome number", with: @molecular_datum.chromosome_number
    fill_in "Ensembl gene accession number", with: @molecular_datum.ensembl_gene_accession_number
    fill_in "Genbank gene accession number", with: @molecular_datum.genbank_gene_accession_number
    fill_in "Gene name", with: @molecular_datum.gene_name
    fill_in "Gene promoter", with: @molecular_datum.gene_promoter
    fill_in "Gene sequence", with: @molecular_datum.gene_sequence
    fill_in "Genetic modification method", with: @molecular_datum.genetic_modification_method_id
    fill_in "Genome version accession number", with: @molecular_datum.genome_version_accession_number
    fill_in "Locus insertion", with: @molecular_datum.locus_insertion
    fill_in "Mutated region", with: @molecular_datum.mutated_region
    click_on "Create Molecular datum"

    assert_text "Molecular datum was successfully created"
    click_on "Back"
  end

  test "updating a Molecular datum" do
    visit molecular_data_url
    click_on "Edit", match: :first

    fill_in "Nvertx", with: @molecular_datum.NvERTx_id
    fill_in "Chromosome number", with: @molecular_datum.chromosome_number
    fill_in "Ensembl gene accession number", with: @molecular_datum.ensembl_gene_accession_number
    fill_in "Genbank gene accession number", with: @molecular_datum.genbank_gene_accession_number
    fill_in "Gene name", with: @molecular_datum.gene_name
    fill_in "Gene promoter", with: @molecular_datum.gene_promoter
    fill_in "Gene sequence", with: @molecular_datum.gene_sequence
    fill_in "Genetic modification method", with: @molecular_datum.genetic_modification_method_id
    fill_in "Genome version accession number", with: @molecular_datum.genome_version_accession_number
    fill_in "Locus insertion", with: @molecular_datum.locus_insertion
    fill_in "Mutated region", with: @molecular_datum.mutated_region
    click_on "Update Molecular datum"

    assert_text "Molecular datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Molecular datum" do
    visit molecular_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Molecular datum was successfully destroyed"
  end
end
