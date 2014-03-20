require 'test_helper'

class FactoresControllerTest < ActionController::TestCase
  setup do
    @factor = factores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factor" do
    assert_difference('Factor.count') do
      post :create, factor: { area_id: @factor.area_id, descripcion: @factor.descripcion, tipofactor_id: @factor.tipofactor_id }
    end

    assert_redirected_to factor_path(assigns(:factor))
  end

  test "should show factor" do
    get :show, id: @factor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factor
    assert_response :success
  end

  test "should update factor" do
    patch :update, id: @factor, factor: { area_id: @factor.area_id, descripcion: @factor.descripcion, tipofactor_id: @factor.tipofactor_id }
    assert_redirected_to factor_path(assigns(:factor))
  end

  test "should destroy factor" do
    assert_difference('Factor.count', -1) do
      delete :destroy, id: @factor
    end

    assert_redirected_to factores_path
  end
end
