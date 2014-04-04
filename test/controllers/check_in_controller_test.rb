require 'test_helper'

class CheckInControllerTest < ActionController::TestCase
  test "should get create" do
=begin # fix this - ask Pito 
    assert_difference('CheckIn.count') do
        post :create, three: {user_id: 3, time: '2014-03-07 19:41:09', latitude: 45.0, longitude: 45.0, location: 'SCC'}
     end
=end
     assert_response :success
  end

end
