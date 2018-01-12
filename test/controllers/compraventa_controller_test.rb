require 'test_helper'

class CompraventaControllerTest < ActionController::TestCase
  setup do
    @compraventum = compraventa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compraventa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compraventum" do
    assert_difference('Compraventum.count') do
      post :create, compraventum: { comprador: @compraventum.comprador, fecha_compra: @compraventum.fecha_compra, fecha_publicacion: @compraventum.fecha_publicacion, id_coche: @compraventum.id_coche, precio: @compraventum.precio }
    end

    assert_redirected_to compraventum_path(assigns(:compraventum))
  end

  test "should show compraventum" do
    get :show, id: @compraventum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compraventum
    assert_response :success
  end

  test "should update compraventum" do
    patch :update, id: @compraventum, compraventum: { comprador: @compraventum.comprador, fecha_compra: @compraventum.fecha_compra, fecha_publicacion: @compraventum.fecha_publicacion, id_coche: @compraventum.id_coche, precio: @compraventum.precio }
    assert_redirected_to compraventum_path(assigns(:compraventum))
  end

  test "should destroy compraventum" do
    assert_difference('Compraventum.count', -1) do
      delete :destroy, id: @compraventum
    end

    assert_redirected_to compraventa_path
  end
end
