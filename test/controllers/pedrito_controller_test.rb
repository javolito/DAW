require 'test_helper'

class PedritoControllerTest < ActionController::TestCase
  test "should get alquiler" do
    get :alquiler
    assert_response :success
  end

end
