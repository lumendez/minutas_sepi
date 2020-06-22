require 'test_helper'

class BajaTemporalRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baja_temporal_registro = baja_temporal_registros(:one)
  end

  test "should get index" do
    get baja_temporal_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_baja_temporal_registro_url
    assert_response :success
  end

  test "should create baja_temporal_registro" do
    assert_difference('BajaTemporalRegistro.count') do
      post baja_temporal_registros_url, params: { baja_temporal_registro: { caso_id: @baja_temporal_registro.caso_id, motivacion: @baja_temporal_registro.motivacion } }
    end

    assert_redirected_to baja_temporal_registro_url(BajaTemporalRegistro.last)
  end

  test "should show baja_temporal_registro" do
    get baja_temporal_registro_url(@baja_temporal_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_baja_temporal_registro_url(@baja_temporal_registro)
    assert_response :success
  end

  test "should update baja_temporal_registro" do
    patch baja_temporal_registro_url(@baja_temporal_registro), params: { baja_temporal_registro: { caso_id: @baja_temporal_registro.caso_id, motivacion: @baja_temporal_registro.motivacion } }
    assert_redirected_to baja_temporal_registro_url(@baja_temporal_registro)
  end

  test "should destroy baja_temporal_registro" do
    assert_difference('BajaTemporalRegistro.count', -1) do
      delete baja_temporal_registro_url(@baja_temporal_registro)
    end

    assert_redirected_to baja_temporal_registros_url
  end
end
