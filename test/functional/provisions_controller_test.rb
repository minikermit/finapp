require 'test_helper'

class ProvisionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provision" do
    assert_difference('Provision.count') do
      post :create, :provision => { }
    end

    assert_redirected_to provision_path(assigns(:provision))
  end

  test "should show provision" do
    get :show, :id => provisions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => provisions(:one).to_param
    assert_response :success
  end

  test "should update provision" do
    put :update, :id => provisions(:one).to_param, :provision => { }
    assert_redirected_to provision_path(assigns(:provision))
  end

  test "should destroy provision" do
    assert_difference('Provision.count', -1) do
      delete :destroy, :id => provisions(:one).to_param
    end

    assert_redirected_to provisions_path
  end
end
