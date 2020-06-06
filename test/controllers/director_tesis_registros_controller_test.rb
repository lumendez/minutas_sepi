require 'test_helper'

class DirectorTesisRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @director_tesis_registro = director_tesis_registros(:one)
  end

  test "should get index" do
    get director_tesis_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_director_tesis_registro_url
    assert_response :success
  end

  test "should create director_tesis_registro" do
    assert_difference('DirectorTesisRegistro.count') do
      post director_tesis_registros_url, params: { director_tesis_registro: { caso_id: @director_tesis_registro.caso_id, nombre: @director_tesis_registro.nombre } }
    end

    assert_redirected_to director_tesis_registro_url(DirectorTesisRegistro.last)
  end

  test "should show director_tesis_registro" do
    get director_tesis_registro_url(@director_tesis_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_director_tesis_registro_url(@director_tesis_registro)
    assert_response :success
  end

  test "should update director_tesis_registro" do
    patch director_tesis_registro_url(@director_tesis_registro), params: { director_tesis_registro: { caso_id: @director_tesis_registro.caso_id, nombre: @director_tesis_registro.nombre } }
    assert_redirected_to director_tesis_registro_url(@director_tesis_registro)
  end

  test "should destroy director_tesis_registro" do
    assert_difference('DirectorTesisRegistro.count', -1) do
      delete director_tesis_registro_url(@director_tesis_registro)
    end

    assert_redirected_to director_tesis_registros_url
  end
end
