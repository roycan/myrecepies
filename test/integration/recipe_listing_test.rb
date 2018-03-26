require 'test_helper'

class RecipeListingTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get recipe index" do
  		get recipe_listing_url
  		assert_response :success
  end
end
