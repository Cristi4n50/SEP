require 'test_helper'

class JefesControllerTest < ActionController::TestCase
  setup do
    @jefe = jefes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jefes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jefe" do
    assert_difference('Jefe.count') do
      post :create, jefe: { apellidos: @jefe.apellidos, cargo: @jefe.cargo, email: @jefe.email, empresa_id: @jefe.empresa_id, nombres: @jefe.nombres, telefono: @jefe.telefono }
    end

    assert_redirected_to jefe_path(assigns(:jefe))
  end

  test "should show jefe" do
    get :show, id: @jefe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jefe
    assert_response :success
  end

  test "should update jefe" do
    patch :update, id: @jefe, jefe: { apellidos: @jefe.apellidos, cargo: @jefe.cargo, email: @jefe.email, empresa_id: @jefe.empresa_id, nombres: @jefe.nombres, telefono: @jefe.telefono }
    assert_redirected_to jefe_path(assigns(:jefe))
  end

  test "should destroy jefe" do
    assert_difference('Jefe.count', -1) do
      delete :destroy, id: @jefe
    end

    assert_redirected_to jefes_path
  end
end
