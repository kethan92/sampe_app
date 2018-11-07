require 'test_helper'

class StatusPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get status_page_home_url
    assert_response :success
  end

  test "should get help" do
    get status_page_help_url
    assert_response :success
  end

end
