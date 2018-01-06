require 'test_helper'

class PublishesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get publishes_show_url
    assert_response :success
  end

end
