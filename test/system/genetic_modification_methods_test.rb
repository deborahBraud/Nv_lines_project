require "application_system_test_case"

class GeneticModificationMethodsTest < ApplicationSystemTestCase
  setup do
    @genetic_modification_method = genetic_modification_methods(:one)
  end

  test "visiting the index" do
    visit genetic_modification_methods_url
    assert_selector "h1", text: "Genetic Modification Methods"
  end

  test "creating a Genetic modification method" do
    visit genetic_modification_methods_url
    click_on "New Genetic Modification Method"

    fill_in "Construction type description", with: @genetic_modification_method.construction_type_description
    fill_in "Line", with: @genetic_modification_method.line_id
    fill_in "Molecular tools", with: @genetic_modification_method.molecular_tools
    fill_in "Mutagenic construction type", with: @genetic_modification_method.mutagenic_construction_type
    fill_in "Mutation type", with: @genetic_modification_method.mutation_type
    fill_in "Reagent and protocol", with: @genetic_modification_method.reagent_and_protocol
    fill_in "Transgenic construction type", with: @genetic_modification_method.transgenic_construction_type
    fill_in "Vector description", with: @genetic_modification_method.vector_description
    fill_in "Vector name", with: @genetic_modification_method.vector_name
    click_on "Create Genetic modification method"

    assert_text "Genetic modification method was successfully created"
    click_on "Back"
  end

  test "updating a Genetic modification method" do
    visit genetic_modification_methods_url
    click_on "Edit", match: :first

    fill_in "Construction type description", with: @genetic_modification_method.construction_type_description
    fill_in "Line", with: @genetic_modification_method.line_id
    fill_in "Molecular tools", with: @genetic_modification_method.molecular_tools
    fill_in "Mutagenic construction type", with: @genetic_modification_method.mutagenic_construction_type
    fill_in "Mutation type", with: @genetic_modification_method.mutation_type
    fill_in "Reagent and protocol", with: @genetic_modification_method.reagent_and_protocol
    fill_in "Transgenic construction type", with: @genetic_modification_method.transgenic_construction_type
    fill_in "Vector description", with: @genetic_modification_method.vector_description
    fill_in "Vector name", with: @genetic_modification_method.vector_name
    click_on "Update Genetic modification method"

    assert_text "Genetic modification method was successfully updated"
    click_on "Back"
  end

  test "destroying a Genetic modification method" do
    visit genetic_modification_methods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genetic modification method was successfully destroyed"
  end
end
