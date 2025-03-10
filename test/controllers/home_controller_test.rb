require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path # Use root_path instead of home_index_url
    assert_response :success
  end
end
