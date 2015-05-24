require 'test_helper'

class OutletsControllerTest < ActionController::TestCase
  setup do
    @outlet = outlets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outlets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outlet" do
    assert_difference('Outlet.count') do
      post :create, outlet: { company_id: @outlet.company_id, description: @outlet.description, outlet: @outlet.outlet, price: @outlet.price, title: @outlet.title }
    end

    assert_redirected_to outlet_path(assigns(:outlet))
  end

  test "should show outlet" do
    get :show, id: @outlet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outlet
    assert_response :success
  end

  test "should update outlet" do
    patch :update, id: @outlet, outlet: { company_id: @outlet.company_id, description: @outlet.description, outlet: @outlet.outlet, price: @outlet.price, title: @outlet.title }
    assert_redirected_to outlet_path(assigns(:outlet))
  end

  test "should destroy outlet" do
    assert_difference('Outlet.count', -1) do
      delete :destroy, id: @outlet
    end

    assert_redirected_to outlets_path
  end
end
