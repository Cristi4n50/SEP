require 'test_helper'

class TypecitizenesControllerTest < ActionController::TestCase
  setup do
    @typecitizen = typecitizenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typecitizenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typecitizen" do
    assert_difference('Typecitizen.count') do
      post :create, typecitizen: { acronym: @typecitizen.acronym, name: @typecitizen.name }
    end

    assert_redirected_to typecitizen_path(assigns(:typecitizen))
  end

  test "should show typecitizen" do
    get :show, id: @typecitizen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typecitizen
    assert_response :success
  end

  test "should update typecitizen" do
    patch :update, id: @typecitizen, typecitizen: { acronym: @typecitizen.acronym, name: @typecitizen.name }
    assert_redirected_to typecitizen_path(assigns(:typecitizen))
  end

  test "should destroy typecitizen" do
    assert_difference('Typecitizen.count', -1) do
      delete :destroy, id: @typecitizen
    end

    assert_redirected_to typecitizenes_path
  end
end
