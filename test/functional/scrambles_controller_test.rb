require 'test_helper'

class ScramblesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scrambles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scramble" do
    assert_difference('Scramble.count') do
      post :create, :scramble => { }
    end

    assert_redirected_to scramble_path(assigns(:scramble))
  end

  test "should show scramble" do
    get :show, :id => scrambles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => scrambles(:one).to_param
    assert_response :success
  end

  test "should update scramble" do
    put :update, :id => scrambles(:one).to_param, :scramble => { }
    assert_redirected_to scramble_path(assigns(:scramble))
  end

  test "should destroy scramble" do
    assert_difference('Scramble.count', -1) do
      delete :destroy, :id => scrambles(:one).to_param
    end

    assert_redirected_to scrambles_path
  end
end
