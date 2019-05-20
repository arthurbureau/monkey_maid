require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get dashboard_profile_url
    assert_response :success
  end

end
