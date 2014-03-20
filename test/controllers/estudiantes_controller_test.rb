require 'test_helper'

class EstudiantesControllerTest < ActionController::TestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post :create, estudiante: { apellido1: @estudiante.apellido1, apellido2: @estudiante.apellido2, documento: @estudiante.documento, ficha_id: @estudiante.ficha_id, genero: @estudiante.genero, jefe_id: @estudiante.jefe_id, nombre1: @estudiante.nombre1, nombre2: @estudiante.nombre2, tipodoc_id: @estudiante.tipodoc_id }
    end

    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should show estudiante" do
    get :show, id: @estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudiante
    assert_response :success
  end

  test "should update estudiante" do
    patch :update, id: @estudiante, estudiante: { apellido1: @estudiante.apellido1, apellido2: @estudiante.apellido2, documento: @estudiante.documento, ficha_id: @estudiante.ficha_id, genero: @estudiante.genero, jefe_id: @estudiante.jefe_id, nombre1: @estudiante.nombre1, nombre2: @estudiante.nombre2, tipodoc_id: @estudiante.tipodoc_id }
    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_redirected_to estudiantes_path
  end
end
