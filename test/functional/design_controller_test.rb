require 'test_helper'

class DesignControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get load" do
    get :load
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

end
