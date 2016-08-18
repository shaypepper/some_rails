require 'test_helper'

class ZebrasControllerTest < ActionController::TestCase
  setup do
    @zebra = zebras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zebras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zebra" do
    assert_difference('Zebra.count') do
      post :create, zebra: { name: @zebra.name }
    end

    assert_redirected_to zebra_path(assigns(:zebra))
  end

  test "should show zebra" do
    get :show, id: @zebra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zebra
    assert_response :success
  end

  test "should update zebra" do
    patch :update, id: @zebra, zebra: { name: @zebra.name }
    assert_redirected_to zebra_path(assigns(:zebra))
  end

  test "should destroy zebra" do
    assert_difference('Zebra.count', -1) do
      delete :destroy, id: @zebra
    end

    assert_redirected_to zebras_path
  end
end
