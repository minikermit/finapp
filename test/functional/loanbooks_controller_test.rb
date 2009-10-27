require 'test_helper'

class LoanbooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loanbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loanbook" do
    assert_difference('Loanbook.count') do
      post :create, :loanbook => { }
    end

    assert_redirected_to loanbook_path(assigns(:loanbook))
  end

  test "should show loanbook" do
    get :show, :id => loanbooks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => loanbooks(:one).to_param
    assert_response :success
  end

  test "should update loanbook" do
    put :update, :id => loanbooks(:one).to_param, :loanbook => { }
    assert_redirected_to loanbook_path(assigns(:loanbook))
  end

  test "should destroy loanbook" do
    assert_difference('Loanbook.count', -1) do
      delete :destroy, :id => loanbooks(:one).to_param
    end

    assert_redirected_to loanbooks_path
  end
end
