require 'test_helper'

class TipoFactoresControllerTest < ActionController::TestCase
  setup do
    @tipo_factor = tipo_factores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_factores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_factor" do
    assert_difference('TipoFactor.count') do
      post :create, tipo_factor: { nombre: @tipo_factor.nombre, sigla: @tipo_factor.sigla }
    end

    assert_redirected_to tipo_factor_path(assigns(:tipo_factor))
  end

  test "should show tipo_factor" do
    get :show, id: @tipo_factor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_factor
    assert_response :success
  end

  test "should update tipo_factor" do
    patch :update, id: @tipo_factor, tipo_factor: { nombre: @tipo_factor.nombre, sigla: @tipo_factor.sigla }
    assert_redirected_to tipo_factor_path(assigns(:tipo_factor))
  end

  test "should destroy tipo_factor" do
    assert_difference('TipoFactor.count', -1) do
      delete :destroy, id: @tipo_factor
    end

    assert_redirected_to tipo_factores_path
  end
end
