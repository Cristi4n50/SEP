require 'test_helper'

class AsignaresProyControllerTest < ActionController::TestCase
  setup do
    @asignar_proy = asignares_proy(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignares_proy)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignar_proy" do
    assert_difference('AsignarProy.count') do
      post :create, asignar_proy: { estudiante_id: @asignar_proy.estudiante_id, objsyproy_id: @asignar_proy.objsyproy_id }
    end

    assert_redirected_to asignar_proy_path(assigns(:asignar_proy))
  end

  test "should show asignar_proy" do
    get :show, id: @asignar_proy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignar_proy
    assert_response :success
  end

  test "should update asignar_proy" do
    patch :update, id: @asignar_proy, asignar_proy: { estudiante_id: @asignar_proy.estudiante_id, objsyproy_id: @asignar_proy.objsyproy_id }
    assert_redirected_to asignar_proy_path(assigns(:asignar_proy))
  end

  test "should destroy asignar_proy" do
    assert_difference('AsignarProy.count', -1) do
      delete :destroy, id: @asignar_proy
    end

    assert_redirected_to asignares_proy_path
  end
end
