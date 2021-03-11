require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "creating a Staff" do
    visit staffs_url
    click_on "New Staff"

    fill_in "Institut name", with: @staff.institut_name
    fill_in "Staff adress", with: @staff.staff_adress
    fill_in "Staff header", with: @staff.staff_header
    fill_in "Staff name", with: @staff.staff_name
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "updating a Staff" do
    visit staffs_url
    click_on "Edit", match: :first

    fill_in "Institut name", with: @staff.institut_name
    fill_in "Staff adress", with: @staff.staff_adress
    fill_in "Staff header", with: @staff.staff_header
    fill_in "Staff name", with: @staff.staff_name
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Staff" do
    visit staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Staff was successfully destroyed"
  end
end
