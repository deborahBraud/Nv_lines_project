require "test_helper"

class LinesManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get wt_lines" do
    get lines_management_wt_lines_url
    assert_response :success
  end

  test "should get tg_m_lines" do
    get lines_management_tg_m_lines_url
    assert_response :success
  end
end
