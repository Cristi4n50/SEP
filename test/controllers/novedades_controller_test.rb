require 'test_helper'

class NovedadesControllerTest < ActionController::TestCase
  setup do
    @novedad = novedades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novedades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novedad" do
    assert_difference('Novedad.count') do
      post :create, novedad: { actEstado_id: @novedad.actEstado_id, descripcion: @novedad.descripcion, fecha_ocurrencia: @novedad.fecha_ocurrencia, implicados: @novedad.implicados, user_id: @novedad.user_id }
    end

    assert_redirected_to novedad_path(assigns(:novedad))
  end

  test "should show novedad" do
    get :show, id: @novedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novedad
    assert_response :success
  end

  test "should update novedad" do
    patch :update, id: @novedad, novedad: { actEstado_id: @novedad.actEstado_id, descripcion: @novedad.descripcion, fecha_ocurrencia: @novedad.fecha_ocurrencia, implicados: @novedad.implicados, user_id: @novedad.user_id }
    assert_redirected_to novedad_path(assigns(:novedad))
  end

  test "should destroy novedad" do
    assert_difference('Novedad.count', -1) do
      delete :destroy, id: @novedad
    end

    assert_redirected_to novedades_path
  end
end
