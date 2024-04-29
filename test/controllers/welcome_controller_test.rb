require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get landing_page" do
    get welcome_landing_page_url
    assert_response :success
  end
end
