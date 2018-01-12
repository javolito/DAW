require 'test_helper'

class SubastaControllerTest < ActionController::TestCase
  setup do
    @subastum = subasta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subasta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subastum" do
    assert_difference('Subastum.count') do
      post :create, subastum: { compra_ya: @subastum.compra_ya, comprador: @subastum.comprador, fecha_limite: @subastum.fecha_limite, fecha_publicacion: @subastum.fecha_publicacion, id_coche: @subastum.id_coche, puja_actual: @subastum.puja_actual }
    end

    assert_redirected_to subastum_path(assigns(:subastum))
  end

  test "should show subastum" do
    get :show, id: @subastum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subastum
    assert_response :success
  end

  test "should update subastum" do
    patch :update, id: @subastum, subastum: { compra_ya: @subastum.compra_ya, comprador: @subastum.comprador, fecha_limite: @subastum.fecha_limite, fecha_publicacion: @subastum.fecha_publicacion, id_coche: @subastum.id_coche, puja_actual: @subastum.puja_actual }
    assert_redirected_to subastum_path(assigns(:subastum))
  end

  test "should destroy subastum" do
    assert_difference('Subastum.count', -1) do
      delete :destroy, id: @subastum
    end

    assert_redirected_to subasta_path
  end
end
