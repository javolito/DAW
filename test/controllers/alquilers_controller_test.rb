require 'test_helper'

class AlquilersControllerTest < ActionController::TestCase
  setup do
    @alquiler = alquilers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alquilers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alquiler" do
    assert_difference('Alquiler.count') do
      post :create, alquiler: { alquilador: @alquiler.alquilador, fecha_fin_alquiler: @alquiler.fecha_fin_alquiler, fecha_fin_anuncio: @alquiler.fecha_fin_anuncio, fecha_ini_alquiler: @alquiler.fecha_ini_alquiler, fecha_ini_anuncio: @alquiler.fecha_ini_anuncio, id_coche: @alquiler.id_coche, precio: @alquiler.precio }
    end

    assert_redirected_to alquiler_path(assigns(:alquiler))
  end

  test "should show alquiler" do
    get :show, id: @alquiler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alquiler
    assert_response :success
  end

  test "should update alquiler" do
    patch :update, id: @alquiler, alquiler: { alquilador: @alquiler.alquilador, fecha_fin_alquiler: @alquiler.fecha_fin_alquiler, fecha_fin_anuncio: @alquiler.fecha_fin_anuncio, fecha_ini_alquiler: @alquiler.fecha_ini_alquiler, fecha_ini_anuncio: @alquiler.fecha_ini_anuncio, id_coche: @alquiler.id_coche, precio: @alquiler.precio }
    assert_redirected_to alquiler_path(assigns(:alquiler))
  end

  test "should destroy alquiler" do
    assert_difference('Alquiler.count', -1) do
      delete :destroy, id: @alquiler
    end

    assert_redirected_to alquilers_path
  end
end
