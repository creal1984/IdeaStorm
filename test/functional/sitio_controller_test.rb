require 'test_helper'

class SitioControllerTest < ActionController::TestCase
  test "should get perfil_usuario" do
    get :perfil_usuario
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get publicacion_proyecto" do
    get :publicacion_proyecto
    assert_response :success
  end

  test "should get ficha_proyecto" do
    get :ficha_proyecto
    assert_response :success
  end

  test "should get calificacion_proyecto" do
    get :calificacion_proyecto
    assert_response :success
  end

end
