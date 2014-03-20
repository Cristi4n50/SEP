require 'test_helper'

class ActividadesControllerTest < ActionController::TestCase
  setup do
    @actividad = actividades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actividades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actividad" do
    assert_difference('Actividade.count') do
      post :create, actividad: { actEstado_id: @actividad.actEstado_id, categoria_id: @actividad.categoria_id, descripcion: @actividad.descripcion, estudiante_id: @actividad.estudiante_id, fecha_fin: @actividad.fecha_fin, fecha_inicio: @actividad.fecha_inicio, objsyproy_id: @actividad.objsyproy_id }
    end

    assert_redirected_to actividad_path(assigns(:actividad))
  end

  test "should show actividad" do
    get :show, id: @actividad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actividad
    assert_response :success
  end

  test "should update actividad" do
    patch :update, id: @actividad, actividad: { actEstado_id: @actividad.actEstado_id, categoria_id: @actividad.categoria_id, descripcion: @actividad.descripcion, estudiante_id: @actividad.estudiante_id, fecha_fin: @actividad.fecha_fin, fecha_inicio: @actividad.fecha_inicio, objsyproy_id: @actividad.objsyproy_id }
    assert_redirected_to actividad_path(assigns(:actividad))
  end

  test "should destroy actividad" do
    assert_difference('Actividade.count', -1) do
      delete :destroy, id: @actividad
    end

    assert_redirected_to actividades_path
  end
end
