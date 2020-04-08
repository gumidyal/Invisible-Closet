require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get needs" do
    get pages_needs_url
    assert_response :success
  end

  test "should get request" do
    get pages_request_url
    assert_response :success
  end

end
