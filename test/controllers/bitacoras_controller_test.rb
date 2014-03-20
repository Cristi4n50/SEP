require 'test_helper'

class BitacorasControllerTest < ActionController::TestCase
  setup do
    @bitacora = bitacoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bitacoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bitacora" do
    assert_difference('Bitacora.count') do
      post :create, bitacora: { actestado_id: @bitacora.actestado_id, actividad_id: @bitacora.actividad_id, asignar_proy_id: @bitacora.asignar_proy_id, asignar_proy_id: @bitacora.asignar_proy_id, categoria_id: @bitacora.categoria_id, descripcion: @bitacora.descripcion, estudiante_id: @bitacora.estudiante_id, fecha_fin: @bitacora.fecha_fin, fecha_inicio: @bitacora.fecha_inicio, nombre: @bitacora.nombre, nombreproyecto: @bitacora.nombreproyecto, objetivo: @bitacora.objetivo }
    end

    assert_redirected_to bitacora_path(assigns(:bitacora))
  end

  test "should show bitacora" do
    get :show, id: @bitacora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bitacora
    assert_response :success
  end

  test "should update bitacora" do
    patch :update, id: @bitacora, bitacora: { actestado_id: @bitacora.actestado_id, actividad_id: @bitacora.actividad_id, asignar_proy_id: @bitacora.asignar_proy_id, asignar_proy_id: @bitacora.asignar_proy_id, categoria_id: @bitacora.categoria_id, descripcion: @bitacora.descripcion, estudiante_id: @bitacora.estudiante_id, fecha_fin: @bitacora.fecha_fin, fecha_inicio: @bitacora.fecha_inicio, nombre: @bitacora.nombre, nombreproyecto: @bitacora.nombreproyecto, objetivo: @bitacora.objetivo }
    assert_redirected_to bitacora_path(assigns(:bitacora))
  end

  test "should destroy bitacora" do
    assert_difference('Bitacora.count', -1) do
      delete :destroy, id: @bitacora
    end

    assert_redirected_to bitacoras_path
  end
end
