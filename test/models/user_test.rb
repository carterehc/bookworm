require 'test_helper'

class UserTest < ActiveSupport::TestCase 
  def setup
    @user = User.new(username:"ExampleUser", password: "Example Password", password_confirmation: "Example Password")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "username should be unique" do
    duplicate = @user.dup
    @user.save
    assert_not duplicate.valid?
  end
end
