require 'test_helper'

class DetalleEvaluacionesControllerTest < ActionController::TestCase
  setup do
    @detalle_evaluacion = detalle_evaluaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_evaluaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_evaluacion" do
    assert_difference('DetalleEvaluacion.count') do
      post :create, detalle_evaluacion: { evaluacion_id: @detalle_evaluacion.evaluacion_id, factor_id: @detalle_evaluacion.factor_id, nota: @detalle_evaluacion.nota, observaciones: @detalle_evaluacion.observaciones }
    end

    assert_redirected_to detalle_evaluacion_path(assigns(:detalle_evaluacion))
  end

  test "should show detalle_evaluacion" do
    get :show, id: @detalle_evaluacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_evaluacion
    assert_response :success
  end

  test "should update detalle_evaluacion" do
    patch :update, id: @detalle_evaluacion, detalle_evaluacion: { evaluacion_id: @detalle_evaluacion.evaluacion_id, factor_id: @detalle_evaluacion.factor_id, nota: @detalle_evaluacion.nota, observaciones: @detalle_evaluacion.observaciones }
    assert_redirected_to detalle_evaluacion_path(assigns(:detalle_evaluacion))
  end

  test "should destroy detalle_evaluacion" do
    assert_difference('DetalleEvaluacion.count', -1) do
      delete :destroy, id: @detalle_evaluacion
    end

    assert_redirected_to detalle_evaluaciones_path
  end
end
