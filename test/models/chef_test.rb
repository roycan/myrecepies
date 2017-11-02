require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "veggie", email: "roy@chef.com")
  end

  # check that the model's there and it's correctly hooked up
  test "Chef should be valid" do
    assert @chef.valid?
  end

  test "chefname should be present" do
    @chef.chefname = ""
    assert_not @chef.valid?
  end

  test "email should be present" do
    @chef.email = ""
    assert_not @chef.valid?
  end

  test "chefname should be less than 31 characters" do
    @chef.chefname = "a" *31
    assert_not @chef.valid?
  end

  test "email should be less than 200 characters" do
    @chef.email = "a" * 195  + "@example.com"
    assert_not @chef.valid?
  end

  test "email should accept correct format" do
    valid_emails = %w[ user@example.com roy@chef.com M.first@yahoo.ca john+smith@co.uk.org]
    valid_emails.each do |valids|
      @chef.email = valids
      assert @chef.valid?, "#{valids.inspect} should be valid"
    end
  end

  test "should reject invalid email addresses" do
      invalid_emails = %w[roy@gmail roy@g,com hello@foo+bar.com]
    invalid_emails.each do |invalids|
      @chef.email = invalids
      assert_not @chef.valid? "#{invalids.inspect} should be invalid"
    end
  end

  test "email should be unique" do
    duplicate_chef = @chef.dup
    #duplicate_chef.email = @chef.email
    @chef.save
    assert_not duplicate_chef.valid? 

  end

  test "email should be case-insensitive" do
    duplicate_chef = @chef.dup
    duplicate_chef.email = @chef.email.upcase
    @chef.save
    assert_not duplicate_chef.valid?
  end

  test "email should be lower case before getting saved" do
    mixed_email = "RoyCanseco@yahoo.com"
    @chef.email = mixed_email;
    @chef.save
    assert_equal @chef.reload.email , mixed_email.downcase
  end
  

end
