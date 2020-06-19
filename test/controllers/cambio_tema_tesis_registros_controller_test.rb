require 'test_helper'

class CambioTemaTesisRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_tema_tesis_registro = cambio_tema_tesis_registros(:one)
  end

  test "should get index" do
    get cambio_tema_tesis_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_tema_tesis_registro_url
    assert_response :success
  end

  test "should create cambio_tema_tesis_registro" do
    assert_difference('CambioTemaTesisRegistro.count') do
      post cambio_tema_tesis_registros_url, params: { cambio_tema_tesis_registro: { caso_id: @cambio_tema_tesis_registro.caso_id, nombre: @cambio_tema_tesis_registro.nombre } }
    end

    assert_redirected_to cambio_tema_tesis_registro_url(CambioTemaTesisRegistro.last)
  end

  test "should show cambio_tema_tesis_registro" do
    get cambio_tema_tesis_registro_url(@cambio_tema_tesis_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_tema_tesis_registro_url(@cambio_tema_tesis_registro)
    assert_response :success
  end

  test "should update cambio_tema_tesis_registro" do
    patch cambio_tema_tesis_registro_url(@cambio_tema_tesis_registro), params: { cambio_tema_tesis_registro: { caso_id: @cambio_tema_tesis_registro.caso_id, nombre: @cambio_tema_tesis_registro.nombre } }
    assert_redirected_to cambio_tema_tesis_registro_url(@cambio_tema_tesis_registro)
  end

  test "should destroy cambio_tema_tesis_registro" do
    assert_difference('CambioTemaTesisRegistro.count', -1) do
      delete cambio_tema_tesis_registro_url(@cambio_tema_tesis_registro)
    end

    assert_redirected_to cambio_tema_tesis_registros_url
  end
end
