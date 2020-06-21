require 'test_helper'

class CambioComisionRevisoraRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_comision_revisora_registro = cambio_comision_revisora_registros(:one)
  end

  test "should get index" do
    get cambio_comision_revisora_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_comision_revisora_registro_url
    assert_response :success
  end

  test "should create cambio_comision_revisora_registro" do
    assert_difference('CambioComisionRevisoraRegistro.count') do
      post cambio_comision_revisora_registros_url, params: { cambio_comision_revisora_registro: { caso_id: @cambio_comision_revisora_registro.caso_id, presidente: @cambio_comision_revisora_registro.presidente, primer_vocal: @cambio_comision_revisora_registro.primer_vocal, secretario: @cambio_comision_revisora_registro.secretario, segundo_vocal: @cambio_comision_revisora_registro.segundo_vocal, suplente: @cambio_comision_revisora_registro.suplente, tercer_vocal: @cambio_comision_revisora_registro.tercer_vocal } }
    end

    assert_redirected_to cambio_comision_revisora_registro_url(CambioComisionRevisoraRegistro.last)
  end

  test "should show cambio_comision_revisora_registro" do
    get cambio_comision_revisora_registro_url(@cambio_comision_revisora_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_comision_revisora_registro_url(@cambio_comision_revisora_registro)
    assert_response :success
  end

  test "should update cambio_comision_revisora_registro" do
    patch cambio_comision_revisora_registro_url(@cambio_comision_revisora_registro), params: { cambio_comision_revisora_registro: { caso_id: @cambio_comision_revisora_registro.caso_id, presidente: @cambio_comision_revisora_registro.presidente, primer_vocal: @cambio_comision_revisora_registro.primer_vocal, secretario: @cambio_comision_revisora_registro.secretario, segundo_vocal: @cambio_comision_revisora_registro.segundo_vocal, suplente: @cambio_comision_revisora_registro.suplente, tercer_vocal: @cambio_comision_revisora_registro.tercer_vocal } }
    assert_redirected_to cambio_comision_revisora_registro_url(@cambio_comision_revisora_registro)
  end

  test "should destroy cambio_comision_revisora_registro" do
    assert_difference('CambioComisionRevisoraRegistro.count', -1) do
      delete cambio_comision_revisora_registro_url(@cambio_comision_revisora_registro)
    end

    assert_redirected_to cambio_comision_revisora_registros_url
  end
end
