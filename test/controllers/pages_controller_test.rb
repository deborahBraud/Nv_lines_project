require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get publications_index" do
    get pages_publications_index_url
    assert_response :success
  end

  test "should get about_nematostella" do
    get pages_about_nematostella_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end
end
