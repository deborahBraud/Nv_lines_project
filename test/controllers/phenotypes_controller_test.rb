require "test_helper"

class PhenotypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phenotype = phenotypes(:one)
  end

  test "should get index" do
    get phenotypes_url
    assert_response :success
  end

  test "should get new" do
    get new_phenotype_url
    assert_response :success
  end

  test "should create phenotype" do
    assert_difference('Phenotype.count') do
      post phenotypes_url, params: { phenotype: { adult_fecondity: @phenotype.adult_fecondity, adult_letality: @phenotype.adult_letality, cell_localization: @phenotype.cell_localization, embryo_letality: @phenotype.embryo_letality, larva_letality: @phenotype.larva_letality, larva_swimming_perturbation: @phenotype.larva_swimming_perturbation, metamorphosis_perturbation: @phenotype.metamorphosis_perturbation, other_phenotype_description: @phenotype.other_phenotype_description, post_metamorphosis_growth: @phenotype.post_metamorphosis_growth, regeneration: @phenotype.regeneration, tissu_localization: @phenotype.tissu_localization } }
    end

    assert_redirected_to phenotype_url(Phenotype.last)
  end

  test "should show phenotype" do
    get phenotype_url(@phenotype)
    assert_response :success
  end

  test "should get edit" do
    get edit_phenotype_url(@phenotype)
    assert_response :success
  end

  test "should update phenotype" do
    patch phenotype_url(@phenotype), params: { phenotype: { adult_fecondity: @phenotype.adult_fecondity, adult_letality: @phenotype.adult_letality, cell_localization: @phenotype.cell_localization, embryo_letality: @phenotype.embryo_letality, larva_letality: @phenotype.larva_letality, larva_swimming_perturbation: @phenotype.larva_swimming_perturbation, metamorphosis_perturbation: @phenotype.metamorphosis_perturbation, other_phenotype_description: @phenotype.other_phenotype_description, post_metamorphosis_growth: @phenotype.post_metamorphosis_growth, regeneration: @phenotype.regeneration, tissu_localization: @phenotype.tissu_localization } }
    assert_redirected_to phenotype_url(@phenotype)
  end

  test "should destroy phenotype" do
    assert_difference('Phenotype.count', -1) do
      delete phenotype_url(@phenotype)
    end

    assert_redirected_to phenotypes_url
  end
end
