require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  def setup
    @user = Recipe.create!(chefname: "Roy", email: "roy@chef.com")
    @recipe = Recipe.create(name: "veggie saute" , 
    				description: "add vegetables and oil", 
    				chef: @chef)
  end

  test "should get recipes index page" do
    get recipes_path
    assert_response :success
  end

  # test "should get new recipes page" do
  #   get recipes_new_path
  #   assert_response :success
  # end

  # test "should get edit recipes page" do
  #   get recipes_edit_path
  #   assert_response :success
  # end

end
