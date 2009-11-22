require 'test_helper'

class FdbtabsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fdbtabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fdbtab" do
    assert_difference('Fdbtab.count') do
      post :create, :fdbtab => { }
    end

    assert_redirected_to fdbtab_path(assigns(:fdbtab))
  end

  test "should show fdbtab" do
    get :show, :id => fdbtabs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fdbtabs(:one).to_param
    assert_response :success
  end

  test "should update fdbtab" do
    put :update, :id => fdbtabs(:one).to_param, :fdbtab => { }
    assert_redirected_to fdbtab_path(assigns(:fdbtab))
  end

  test "should destroy fdbtab" do
    assert_difference('Fdbtab.count', -1) do
      delete :destroy, :id => fdbtabs(:one).to_param
    end

    assert_redirected_to fdbtabs_path
  end
end
