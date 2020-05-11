require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"

  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should show Needs on home page" do
    # create a test need in the database
    Need.create(description: "test-need: Water Bottle")
    get static_pages_home_url
    assert_select("li","test-need: Water Bottle")
  end
  
  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get search" do
    get static_pages_search_url
    assert_response :success
    assert_select "title", "Search | #{@base_title}"
  end

  test "should get donation" do
    get static_pages_donation_url
    assert_response :success
    assert_select "title", "Donation | #{@base_title}"
  end
end
