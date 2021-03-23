require "application_system_test_case"

class PhenotypesTest < ApplicationSystemTestCase
  setup do
    @phenotype = phenotypes(:one)
  end

  test "visiting the index" do
    visit phenotypes_url
    assert_selector "h1", text: "Phenotypes"
  end

  test "creating a Phenotype" do
    visit phenotypes_url
    click_on "New Phenotype"

    fill_in "Adult fecondity", with: @phenotype.adult_fecondity
    fill_in "Adult letality", with: @phenotype.adult_letality
    fill_in "Cell localization", with: @phenotype.cell_localization
    fill_in "Embryo letality", with: @phenotype.embryo_letality
    fill_in "Larva letality", with: @phenotype.larva_letality
    check "Larva swimming perturbation" if @phenotype.larva_swimming_perturbation
    check "Metamorphosis perturbation" if @phenotype.metamorphosis_perturbation
    fill_in "Other phenotype description", with: @phenotype.other_phenotype_description
    fill_in "Post metamorphosis growth", with: @phenotype.post_metamorphosis_growth
    fill_in "Regeneration", with: @phenotype.regeneration
    fill_in "Tissu localization", with: @phenotype.tissu_localization
    click_on "Create Phenotype"

    assert_text "Phenotype was successfully created"
    click_on "Back"
  end

  test "updating a Phenotype" do
    visit phenotypes_url
    click_on "Edit", match: :first

    fill_in "Adult fecondity", with: @phenotype.adult_fecondity
    fill_in "Adult letality", with: @phenotype.adult_letality
    fill_in "Cell localization", with: @phenotype.cell_localization
    fill_in "Embryo letality", with: @phenotype.embryo_letality
    fill_in "Larva letality", with: @phenotype.larva_letality
    check "Larva swimming perturbation" if @phenotype.larva_swimming_perturbation
    check "Metamorphosis perturbation" if @phenotype.metamorphosis_perturbation
    fill_in "Other phenotype description", with: @phenotype.other_phenotype_description
    fill_in "Post metamorphosis growth", with: @phenotype.post_metamorphosis_growth
    fill_in "Regeneration", with: @phenotype.regeneration
    fill_in "Tissu localization", with: @phenotype.tissu_localization
    click_on "Update Phenotype"

    assert_text "Phenotype was successfully updated"
    click_on "Back"
  end

  test "destroying a Phenotype" do
    visit phenotypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phenotype was successfully destroyed"
  end
end
