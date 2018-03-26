require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get help page" do
    get static_pages_help_url
    assert_response :success
  end


  test "should get about page" do
    get static_pages_about_url
    assert_response :success

  end
end
