require 'test_helper'

class ServiceAboutControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get service_about_main_url
    assert_response :success
  end

end
