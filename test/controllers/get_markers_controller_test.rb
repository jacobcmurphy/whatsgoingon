require 'test_helper'

class GetMarkersControllerTest < ActionController::TestCase
  test "should get getmark" do
    get :getmark
    assert_response :success
  end

end
