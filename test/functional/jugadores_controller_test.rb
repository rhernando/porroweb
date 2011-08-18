require 'test_helper'

class JugadoresControllerTest < ActionController::TestCase
  setup do
    @jugador = jugadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugador" do
    assert_difference('Jugador.count') do
      post :create, :jugador => @jugador.attributes
    end

    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should show jugador" do
    get :show, :id => @jugador.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @jugador.to_param
    assert_response :success
  end

  test "should update jugador" do
    put :update, :id => @jugador.to_param, :jugador => @jugador.attributes
    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should destroy jugador" do
    assert_difference('Jugador.count', -1) do
      delete :destroy, :id => @jugador.to_param
    end

    assert_redirected_to jugadores_path
  end
end
