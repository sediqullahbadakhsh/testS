require "test_helper"

class NavbarControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get navbar_view_url
    assert_response :success
  end
end
