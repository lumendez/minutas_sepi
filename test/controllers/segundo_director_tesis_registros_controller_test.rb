require 'test_helper'

class SegundoDirectorTesisRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @segundo_director_tesis_registro = segundo_director_tesis_registros(:one)
  end

  test "should get index" do
    get segundo_director_tesis_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_segundo_director_tesis_registro_url
    assert_response :success
  end

  test "should create segundo_director_tesis_registro" do
    assert_difference('SegundoDirectorTesisRegistro.count') do
      post segundo_director_tesis_registros_url, params: { segundo_director_tesis_registro: { caso_id: @segundo_director_tesis_registro.caso_id, nombre: @segundo_director_tesis_registro.nombre } }
    end

    assert_redirected_to segundo_director_tesis_registro_url(SegundoDirectorTesisRegistro.last)
  end

  test "should show segundo_director_tesis_registro" do
    get segundo_director_tesis_registro_url(@segundo_director_tesis_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_segundo_director_tesis_registro_url(@segundo_director_tesis_registro)
    assert_response :success
  end

  test "should update segundo_director_tesis_registro" do
    patch segundo_director_tesis_registro_url(@segundo_director_tesis_registro), params: { segundo_director_tesis_registro: { caso_id: @segundo_director_tesis_registro.caso_id, nombre: @segundo_director_tesis_registro.nombre } }
    assert_redirected_to segundo_director_tesis_registro_url(@segundo_director_tesis_registro)
  end

  test "should destroy segundo_director_tesis_registro" do
    assert_difference('SegundoDirectorTesisRegistro.count', -1) do
      delete segundo_director_tesis_registro_url(@segundo_director_tesis_registro)
    end

    assert_redirected_to segundo_director_tesis_registros_url
  end
end
