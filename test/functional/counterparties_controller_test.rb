require 'test_helper'

class CounterpartiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counterparties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create counterparty" do
    assert_difference('Counterparty.count') do
      post :create, :counterparty => { }
    end

    assert_redirected_to counterparty_path(assigns(:counterparty))
  end

  test "should show counterparty" do
    get :show, :id => counterparties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => counterparties(:one).to_param
    assert_response :success
  end

  test "should update counterparty" do
    put :update, :id => counterparties(:one).to_param, :counterparty => { }
    assert_redirected_to counterparty_path(assigns(:counterparty))
  end

  test "should destroy counterparty" do
    assert_difference('Counterparty.count', -1) do
      delete :destroy, :id => counterparties(:one).to_param
    end

    assert_redirected_to counterparties_path
  end
end
