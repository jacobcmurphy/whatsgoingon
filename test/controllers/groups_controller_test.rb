require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  
  test "should get new" do
    get :new
    assert_response 302 # 302 redirect to groups page
  end

  test "should get create" do
    get :create
    assert_response 302 # 302 redirect to groups page
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
