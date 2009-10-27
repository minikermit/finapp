require 'test_helper'

class ValidationrulesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validationrules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validationrule" do
    assert_difference('Validationrule.count') do
      post :create, :validationrule => { }
    end

    assert_redirected_to validationrule_path(assigns(:validationrule))
  end

  test "should show validationrule" do
    get :show, :id => validationrules(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => validationrules(:one).to_param
    assert_response :success
  end

  test "should update validationrule" do
    put :update, :id => validationrules(:one).to_param, :validationrule => { }
    assert_redirected_to validationrule_path(assigns(:validationrule))
  end

  test "should destroy validationrule" do
    assert_difference('Validationrule.count', -1) do
      delete :destroy, :id => validationrules(:one).to_param
    end

    assert_redirected_to validationrules_path
  end
end
