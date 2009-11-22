require 'test_helper'

class FdbclisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fdbclis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fdbcli" do
    assert_difference('Fdbcli.count') do
      post :create, :fdbcli => { }
    end

    assert_redirected_to fdbcli_path(assigns(:fdbcli))
  end

  test "should show fdbcli" do
    get :show, :id => fdbclis(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fdbclis(:one).to_param
    assert_response :success
  end

  test "should update fdbcli" do
    put :update, :id => fdbclis(:one).to_param, :fdbcli => { }
    assert_redirected_to fdbcli_path(assigns(:fdbcli))
  end

  test "should destroy fdbcli" do
    assert_difference('Fdbcli.count', -1) do
      delete :destroy, :id => fdbclis(:one).to_param
    end

    assert_redirected_to fdbclis_path
  end
end
