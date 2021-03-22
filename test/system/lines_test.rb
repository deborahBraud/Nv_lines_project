require "application_system_test_case"

class LinesTest < ApplicationSystemTestCase
  setup do
    @line = lines(:one)
  end

  test "visiting the index" do
    visit lines_url
    assert_selector "h1", text: "Lines"
  end

  test "creating a Line" do
    visit lines_url
    click_on "New Line"

    fill_in "Breeding type", with: @line.breeding_type
    fill_in "Generation", with: @line.generation
    fill_in "Line name", with: @line.line_name
    fill_in "Line type", with: @line.line_type
    fill_in "Person in charge", with: @line.person_in_charge
    fill_in "Synonym line name", with: @line.synonym_line_name
    click_on "Create Line"

    assert_text "Line was successfully created"
    click_on "Back"
  end

  test "updating a Line" do
    visit lines_url
    click_on "Edit", match: :first

    fill_in "Breeding type", with: @line.breeding_type
    fill_in "Generation", with: @line.generation
    fill_in "Line name", with: @line.line_name
    fill_in "Line type", with: @line.line_type
    fill_in "Person in charge", with: @line.person_in_charge
    fill_in "Synonym line name", with: @line.synonym_line_name
    click_on "Update Line"

    assert_text "Line was successfully updated"
    click_on "Back"
  end

  test "destroying a Line" do
    visit lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line was successfully destroyed"
  end
end
