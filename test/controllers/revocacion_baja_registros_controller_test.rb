require 'test_helper'

class RevocacionBajaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revocacion_baja_registro = revocacion_baja_registros(:one)
  end

  test "should get index" do
    get revocacion_baja_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_revocacion_baja_registro_url
    assert_response :success
  end

  test "should create revocacion_baja_registro" do
    assert_difference('RevocacionBajaRegistro.count') do
      post revocacion_baja_registros_url, params: { revocacion_baja_registro: { caso_id: @revocacion_baja_registro.caso_id, motivacion: @revocacion_baja_registro.motivacion } }
    end

    assert_redirected_to revocacion_baja_registro_url(RevocacionBajaRegistro.last)
  end

  test "should show revocacion_baja_registro" do
    get revocacion_baja_registro_url(@revocacion_baja_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_revocacion_baja_registro_url(@revocacion_baja_registro)
    assert_response :success
  end

  test "should update revocacion_baja_registro" do
    patch revocacion_baja_registro_url(@revocacion_baja_registro), params: { revocacion_baja_registro: { caso_id: @revocacion_baja_registro.caso_id, motivacion: @revocacion_baja_registro.motivacion } }
    assert_redirected_to revocacion_baja_registro_url(@revocacion_baja_registro)
  end

  test "should destroy revocacion_baja_registro" do
    assert_difference('RevocacionBajaRegistro.count', -1) do
      delete revocacion_baja_registro_url(@revocacion_baja_registro)
    end

    assert_redirected_to revocacion_baja_registros_url
  end
end
