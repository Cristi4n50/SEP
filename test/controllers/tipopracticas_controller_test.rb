require 'test_helper'

class TipopracticasControllerTest < ActionController::TestCase
  setup do
    @tipopractica = tipopracticas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipopracticas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipopractica" do
    assert_difference('Tipopractica.count') do
      post :create, tipopractica: { descripcion: @tipopractica.descripcion, nombre: @tipopractica.nombre }
    end

    assert_redirected_to tipopractica_path(assigns(:tipopractica))
  end

  test "should show tipopractica" do
    get :show, id: @tipopractica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipopractica
    assert_response :success
  end

  test "should update tipopractica" do
    patch :update, id: @tipopractica, tipopractica: { descripcion: @tipopractica.descripcion, nombre: @tipopractica.nombre }
    assert_redirected_to tipopractica_path(assigns(:tipopractica))
  end

  test "should destroy tipopractica" do
    assert_difference('Tipopractica.count', -1) do
      delete :destroy, id: @tipopractica
    end

    assert_redirected_to tipopracticas_path
  end
end
