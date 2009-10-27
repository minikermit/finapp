require 'test_helper'

class MortgagescollateralsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mortgagescollaterals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mortgagescollateral" do
    assert_difference('Mortgagescollateral.count') do
      post :create, :mortgagescollateral => { }
    end

    assert_redirected_to mortgagescollateral_path(assigns(:mortgagescollateral))
  end

  test "should show mortgagescollateral" do
    get :show, :id => mortgagescollaterals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mortgagescollaterals(:one).to_param
    assert_response :success
  end

  test "should update mortgagescollateral" do
    put :update, :id => mortgagescollaterals(:one).to_param, :mortgagescollateral => { }
    assert_redirected_to mortgagescollateral_path(assigns(:mortgagescollateral))
  end

  test "should destroy mortgagescollateral" do
    assert_difference('Mortgagescollateral.count', -1) do
      delete :destroy, :id => mortgagescollaterals(:one).to_param
    end

    assert_redirected_to mortgagescollaterals_path
  end
end
