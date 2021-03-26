require "test_helper"

class WildTypeBackgroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wild_type_background = wild_type_backgrounds(:one)
  end

  test "should get index" do
    get wild_type_backgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_wild_type_background_url
    assert_response :success
  end

  test "should create wild_type_background" do
    assert_difference('WildTypeBackground.count') do
      post wild_type_backgrounds_url, params: { wild_type_background: { sampling_conditions: @wild_type_background.sampling_conditions, sampling_geographical_zone: @wild_type_background.sampling_geographical_zone, supplementary_information: @wild_type_background.supplementary_information } }
    end

    assert_redirected_to wild_type_background_url(WildTypeBackground.last)
  end

  test "should show wild_type_background" do
    get wild_type_background_url(@wild_type_background)
    assert_response :success
  end

  test "should get edit" do
    get edit_wild_type_background_url(@wild_type_background)
    assert_response :success
  end

  test "should update wild_type_background" do
    patch wild_type_background_url(@wild_type_background), params: { wild_type_background: { sampling_conditions: @wild_type_background.sampling_conditions, sampling_geographical_zone: @wild_type_background.sampling_geographical_zone, supplementary_information: @wild_type_background.supplementary_information } }
    assert_redirected_to wild_type_background_url(@wild_type_background)
  end

  test "should destroy wild_type_background" do
    assert_difference('WildTypeBackground.count', -1) do
      delete wild_type_background_url(@wild_type_background)
    end

    assert_redirected_to wild_type_backgrounds_url
  end
end
