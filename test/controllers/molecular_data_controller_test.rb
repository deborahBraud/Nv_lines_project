require "test_helper"

class MolecularDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @molecular_datum = molecular_data(:one)
  end

  test "should get index" do
    get molecular_data_url
    assert_response :success
  end

  test "should get new" do
    get new_molecular_datum_url
    assert_response :success
  end

  test "should create molecular_datum" do
    assert_difference('MolecularDatum.count') do
      post molecular_data_url, params: { molecular_datum: { NvERTx_id: @molecular_datum.NvERTx_id, chromosome_number: @molecular_datum.chromosome_number, ensembl_gene_accession_number: @molecular_datum.ensembl_gene_accession_number, genbank_gene_accession_number: @molecular_datum.genbank_gene_accession_number, gene_name: @molecular_datum.gene_name, gene_promoter: @molecular_datum.gene_promoter, gene_sequence: @molecular_datum.gene_sequence, genetic_modification_method_id: @molecular_datum.genetic_modification_method_id, genome_version_accession_number: @molecular_datum.genome_version_accession_number, locus_insertion: @molecular_datum.locus_insertion, mutated_region: @molecular_datum.mutated_region } }
    end

    assert_redirected_to molecular_datum_url(MolecularDatum.last)
  end

  test "should show molecular_datum" do
    get molecular_datum_url(@molecular_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_molecular_datum_url(@molecular_datum)
    assert_response :success
  end

  test "should update molecular_datum" do
    patch molecular_datum_url(@molecular_datum), params: { molecular_datum: { NvERTx_id: @molecular_datum.NvERTx_id, chromosome_number: @molecular_datum.chromosome_number, ensembl_gene_accession_number: @molecular_datum.ensembl_gene_accession_number, genbank_gene_accession_number: @molecular_datum.genbank_gene_accession_number, gene_name: @molecular_datum.gene_name, gene_promoter: @molecular_datum.gene_promoter, gene_sequence: @molecular_datum.gene_sequence, genetic_modification_method_id: @molecular_datum.genetic_modification_method_id, genome_version_accession_number: @molecular_datum.genome_version_accession_number, locus_insertion: @molecular_datum.locus_insertion, mutated_region: @molecular_datum.mutated_region } }
    assert_redirected_to molecular_datum_url(@molecular_datum)
  end

  test "should destroy molecular_datum" do
    assert_difference('MolecularDatum.count', -1) do
      delete molecular_datum_url(@molecular_datum)
    end

    assert_redirected_to molecular_data_url
  end
end
