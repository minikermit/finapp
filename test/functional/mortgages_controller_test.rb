require 'test_helper'

class MortgagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mortgages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mortgage" do
    assert_difference('Mortgage.count') do
      post :create, :mortgage => { }
    end

    assert_redirected_to mortgage_path(assigns(:mortgage))
  end

  test "should show mortgage" do
    get :show, :id => mortgages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mortgages(:one).to_param
    assert_response :success
  end

  test "should update mortgage" do
    put :update, :id => mortgages(:one).to_param, :mortgage => { }
    assert_redirected_to mortgage_path(assigns(:mortgage))
  end

  test "should destroy mortgage" do
    assert_difference('Mortgage.count', -1) do
      delete :destroy, :id => mortgages(:one).to_param
    end

    assert_redirected_to mortgages_path
  end
end
