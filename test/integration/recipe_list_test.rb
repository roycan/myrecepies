require 'test_helper'

class RecipeListTest < ActionDispatch::IntegrationTest

	test "should get recipes index" do
		get recipe_list_path
		assert_response :success
	end
  # test "the truth" do
  #   assert true
  # end
end
