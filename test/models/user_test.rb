require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(lname: "Hackbarth", fname: "Jeff",
                        email: "Hackbugtrack@email.com",
                        thumbnail: "bugs.jpg")
  end
  
  test "User must be valid" do
    assert @user.valid?
  end
  
  test "last name(lname) must be present" do
    @user.lname = ""
    assert_not @user.valid?
  end
  
  test "first name(fname) must be present" do
    @user.fname = ""
    assert_not @user.valid?
  end
  
  test "email must be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  
  

end
