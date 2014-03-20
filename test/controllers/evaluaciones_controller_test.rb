require 'test_helper'

class EvaluacionesControllerTest < ActionController::TestCase
  setup do
    @evaluacion = evaluaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluacion" do
    assert_difference('Evaluacion.count') do
      post :create, evaluacion: { aspectos_negativos: @evaluacion.aspectos_negativos, aspectos_positivos: @evaluacion.aspectos_positivos, estudiante_id: @evaluacion.estudiante_id, fecha_evaluacion: @evaluacion.fecha_evaluacion, fecha_fin: @evaluacion.fecha_fin, fecha_inicio: @evaluacion.fecha_inicio, jefe_id: @evaluacion.jefe_id }
    end

    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test "should show evaluacion" do
    get :show, id: @evaluacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluacion
    assert_response :success
  end

  test "should update evaluacion" do
    patch :update, id: @evaluacion, evaluacion: { aspectos_negativos: @evaluacion.aspectos_negativos, aspectos_positivos: @evaluacion.aspectos_positivos, estudiante_id: @evaluacion.estudiante_id, fecha_evaluacion: @evaluacion.fecha_evaluacion, fecha_fin: @evaluacion.fecha_fin, fecha_inicio: @evaluacion.fecha_inicio, jefe_id: @evaluacion.jefe_id }
    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test "should destroy evaluacion" do
    assert_difference('Evaluacion.count', -1) do
      delete :destroy, id: @evaluacion
    end

    assert_redirected_to evaluaciones_path
  end
end
