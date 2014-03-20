require 'test_helper'

class TitulacionesControllerTest < ActionController::TestCase
  setup do
    @titulacion = titulaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:titulaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create titulacion" do
    assert_difference('Titulacion.count') do
      post :create, titulacion: { descripcion: @titulacion.descripcion, sigla: @titulacion.sigla }
    end

    assert_redirected_to titulacion_path(assigns(:titulacion))
  end

  test "should show titulacion" do
    get :show, id: @titulacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @titulacion
    assert_response :success
  end

  test "should update titulacion" do
    patch :update, id: @titulacion, titulacion: { descripcion: @titulacion.descripcion, sigla: @titulacion.sigla }
    assert_redirected_to titulacion_path(assigns(:titulacion))
  end

  test "should destroy titulacion" do
    assert_difference('Titulacion.count', -1) do
      delete :destroy, id: @titulacion
    end

    assert_redirected_to titulaciones_path
  end
end
