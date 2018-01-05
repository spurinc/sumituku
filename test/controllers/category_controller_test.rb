require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get category_list_url
    assert_response :success
  end

  test "should get subject" do
    get category_subject_url
    assert_response :success
  end

  test "should get not_found" do
    get category_not_found_url
    assert_response :success
  end

end
