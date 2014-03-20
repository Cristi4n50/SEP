require 'test_helper'

class ActestadosControllerTest < ActionController::TestCase
  setup do
    @actestado = actestados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actestados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actestado" do
    assert_difference('Actestado.count') do
      post :create, actestado: { descripcion: @actestado.descripcion, nombre: @actestado.nombre }
    end

    assert_redirected_to actestado_path(assigns(:actestado))
  end

  test "should show actestado" do
    get :show, id: @actestado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actestado
    assert_response :success
  end

  test "should update actestado" do
    patch :update, id: @actestado, actestado: { descripcion: @actestado.descripcion, nombre: @actestado.nombre }
    assert_redirected_to actestado_path(assigns(:actestado))
  end

  test "should destroy actestado" do
    assert_difference('Actestado.count', -1) do
      delete :destroy, id: @actestado
    end

    assert_redirected_to actestados_path
  end
end
