require "test_helper"

class FollowesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get followes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get followes_destroy_url
    assert_response :success
  end
end
