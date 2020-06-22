require 'test_helper'

class SolicitudAbiertaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_abierta_registro = solicitud_abierta_registros(:one)
  end

  test "should get index" do
    get solicitud_abierta_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_abierta_registro_url
    assert_response :success
  end

  test "should create solicitud_abierta_registro" do
    assert_difference('SolicitudAbiertaRegistro.count') do
      post solicitud_abierta_registros_url, params: { solicitud_abierta_registro: { asunto: @solicitud_abierta_registro.asunto, caso_id: @solicitud_abierta_registro.caso_id, motivacion: @solicitud_abierta_registro.motivacion } }
    end

    assert_redirected_to solicitud_abierta_registro_url(SolicitudAbiertaRegistro.last)
  end

  test "should show solicitud_abierta_registro" do
    get solicitud_abierta_registro_url(@solicitud_abierta_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_abierta_registro_url(@solicitud_abierta_registro)
    assert_response :success
  end

  test "should update solicitud_abierta_registro" do
    patch solicitud_abierta_registro_url(@solicitud_abierta_registro), params: { solicitud_abierta_registro: { asunto: @solicitud_abierta_registro.asunto, caso_id: @solicitud_abierta_registro.caso_id, motivacion: @solicitud_abierta_registro.motivacion } }
    assert_redirected_to solicitud_abierta_registro_url(@solicitud_abierta_registro)
  end

  test "should destroy solicitud_abierta_registro" do
    assert_difference('SolicitudAbiertaRegistro.count', -1) do
      delete solicitud_abierta_registro_url(@solicitud_abierta_registro)
    end

    assert_redirected_to solicitud_abierta_registros_url
  end
end
