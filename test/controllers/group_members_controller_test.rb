require 'test_helper'

class GroupMembersControllerTest < ActionController::TestCase

  test "should get create" do
=begin # fix this - ask Pito 
     assert_difference('GroupMember.count') do
        post :create, one: {group_id: 1, user_id: 1, friend_id: 2, accepted: true}
    end
=end
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :redirect
  end

end
