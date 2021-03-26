require "application_system_test_case"

class ImagesTest < ApplicationSystemTestCase
  setup do
    @image = images(:one)
  end

  test "visiting the index" do
    visit images_url
    assert_selector "h1", text: "Images"
  end

  test "creating a Image" do
    visit images_url
    click_on "New Image"

    fill_in "Cellular localization", with: @image.cellular_localization
    fill_in "Image", with: @image.image
    fill_in "Image date", with: @image.image_date
    fill_in "Image legend", with: @image.image_legend
    fill_in "Image name", with: @image.image_name
    fill_in "Lifecycle stage", with: @image.lifecycle_stage
    fill_in "Line", with: @image.line_id
    fill_in "Microscopy technique", with: @image.microscopy_technique
    fill_in "Objective used", with: @image.objective_used
    fill_in "Pehnotype", with: @image.pehnotype_id
    fill_in "Person who takes image", with: @image.person_who_takes_image
    fill_in "Tissu localization", with: @image.tissu_localization
    click_on "Create Image"

    assert_text "Image was successfully created"
    click_on "Back"
  end

  test "updating a Image" do
    visit images_url
    click_on "Edit", match: :first

    fill_in "Cellular localization", with: @image.cellular_localization
    fill_in "Image", with: @image.image
    fill_in "Image date", with: @image.image_date
    fill_in "Image legend", with: @image.image_legend
    fill_in "Image name", with: @image.image_name
    fill_in "Lifecycle stage", with: @image.lifecycle_stage
    fill_in "Line", with: @image.line_id
    fill_in "Microscopy technique", with: @image.microscopy_technique
    fill_in "Objective used", with: @image.objective_used
    fill_in "Pehnotype", with: @image.pehnotype_id
    fill_in "Person who takes image", with: @image.person_who_takes_image
    fill_in "Tissu localization", with: @image.tissu_localization
    click_on "Update Image"

    assert_text "Image was successfully updated"
    click_on "Back"
  end

  test "destroying a Image" do
    visit images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image was successfully destroyed"
  end
end
