require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Page" do
    get welcome_Page_url
    assert_response :success
  end

end
