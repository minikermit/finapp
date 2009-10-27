require 'test_helper'

class NostrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nostros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nostro" do
    assert_difference('Nostro.count') do
      post :create, :nostro => { }
    end

    assert_redirected_to nostro_path(assigns(:nostro))
  end

  test "should show nostro" do
    get :show, :id => nostros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => nostros(:one).to_param
    assert_response :success
  end

  test "should update nostro" do
    put :update, :id => nostros(:one).to_param, :nostro => { }
    assert_redirected_to nostro_path(assigns(:nostro))
  end

  test "should destroy nostro" do
    assert_difference('Nostro.count', -1) do
      delete :destroy, :id => nostros(:one).to_param
    end

    assert_redirected_to nostros_path
  end
end
