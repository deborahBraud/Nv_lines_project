require "application_system_test_case"

class WildTypeBackgroundsTest < ApplicationSystemTestCase
  setup do
    @wild_type_background = wild_type_backgrounds(:one)
  end

  test "visiting the index" do
    visit wild_type_backgrounds_url
    assert_selector "h1", text: "Wild Type Backgrounds"
  end

  test "creating a Wild type background" do
    visit wild_type_backgrounds_url
    click_on "New Wild Type Background"

    fill_in "Sampling conditions", with: @wild_type_background.sampling_conditions
    fill_in "Sampling geographical zone", with: @wild_type_background.sampling_geographical_zone
    fill_in "Supplementary information", with: @wild_type_background.supplementary_information
    click_on "Create Wild type background"

    assert_text "Wild type background was successfully created"
    click_on "Back"
  end

  test "updating a Wild type background" do
    visit wild_type_backgrounds_url
    click_on "Edit", match: :first

    fill_in "Sampling conditions", with: @wild_type_background.sampling_conditions
    fill_in "Sampling geographical zone", with: @wild_type_background.sampling_geographical_zone
    fill_in "Supplementary information", with: @wild_type_background.supplementary_information
    click_on "Update Wild type background"

    assert_text "Wild type background was successfully updated"
    click_on "Back"
  end

  test "destroying a Wild type background" do
    visit wild_type_backgrounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wild type background was successfully destroyed"
  end
end
