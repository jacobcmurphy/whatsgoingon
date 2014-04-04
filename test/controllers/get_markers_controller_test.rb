=begin
require 'test_helper'

class GetMarkersControllerTest < ActionController::TestCase
  test "should get getmark" do
    get :getmark
    assert_response :success
  end

end
=end
# this should not have it's own controller - put it in the CheckIn model
