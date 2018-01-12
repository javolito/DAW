require 'test_helper'

class HistorialDeAlquilersControllerTest < ActionController::TestCase
  setup do
    @historial_de_alquiler = historial_de_alquilers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historial_de_alquilers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historial_de_alquiler" do
    assert_difference('HistorialDeAlquiler.count') do
      post :create, historial_de_alquiler: { alquilador: @historial_de_alquiler.alquilador, fecha_fin_alquiler: @historial_de_alquiler.fecha_fin_alquiler, fecha_ini_alquiler: @historial_de_alquiler.fecha_ini_alquiler, id_coche: @historial_de_alquiler.id_coche, precio: @historial_de_alquiler.precio }
    end

    assert_redirected_to historial_de_alquiler_path(assigns(:historial_de_alquiler))
  end

  test "should show historial_de_alquiler" do
    get :show, id: @historial_de_alquiler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historial_de_alquiler
    assert_response :success
  end

  test "should update historial_de_alquiler" do
    patch :update, id: @historial_de_alquiler, historial_de_alquiler: { alquilador: @historial_de_alquiler.alquilador, fecha_fin_alquiler: @historial_de_alquiler.fecha_fin_alquiler, fecha_ini_alquiler: @historial_de_alquiler.fecha_ini_alquiler, id_coche: @historial_de_alquiler.id_coche, precio: @historial_de_alquiler.precio }
    assert_redirected_to historial_de_alquiler_path(assigns(:historial_de_alquiler))
  end

  test "should destroy historial_de_alquiler" do
    assert_difference('HistorialDeAlquiler.count', -1) do
      delete :destroy, id: @historial_de_alquiler
    end

    assert_redirected_to historial_de_alquilers_path
  end
end
