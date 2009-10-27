require 'test_helper'

class DerivativesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:derivatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create derivative" do
    assert_difference('Derivative.count') do
      post :create, :derivative => { }
    end

    assert_redirected_to derivative_path(assigns(:derivative))
  end

  test "should show derivative" do
    get :show, :id => derivatives(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => derivatives(:one).to_param
    assert_response :success
  end

  test "should update derivative" do
    put :update, :id => derivatives(:one).to_param, :derivative => { }
    assert_redirected_to derivative_path(assigns(:derivative))
  end

  test "should destroy derivative" do
    assert_difference('Derivative.count', -1) do
      delete :destroy, :id => derivatives(:one).to_param
    end

    assert_redirected_to derivatives_path
  end
end
