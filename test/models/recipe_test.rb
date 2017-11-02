require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.create!(chefname: "Roy" ,  email: "roy@chef.com")
    # using 'create!' instead of 'new' so that @chef will go straight to the db
    @recipe = @chef.recipes.build(name: "veggie", description: "great greens recipe")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = ""
    assert_not @recipe.valid?
  end

  test "chef should be present" do
    @recipe.chef_id = nil
    assert_not @recipe.valid?
  end

  test "description should be present" do
    @recipe.description = ""
    assert_not @recipe.valid?
  end

  test "description should not be less than 5 characters" do
    @recipe.description = "a" *3
    assert_not @recipe.valid?
  end

  test "description should not be more than 500 characters" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end


end
