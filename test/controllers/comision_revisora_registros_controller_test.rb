require 'test_helper'

class ComisionRevisoraRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comision_revisora_registro = comision_revisora_registros(:one)
  end

  test "should get index" do
    get comision_revisora_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_comision_revisora_registro_url
    assert_response :success
  end

  test "should create comision_revisora_registro" do
    assert_difference('ComisionRevisoraRegistro.count') do
      post comision_revisora_registros_url, params: { comision_revisora_registro: { caso_id: @comision_revisora_registro.caso_id, presidente: @comision_revisora_registro.presidente, primer_vocal: @comision_revisora_registro.primer_vocal, secretario: @comision_revisora_registro.secretario, segundo_vocal: @comision_revisora_registro.segundo_vocal, suplente: @comision_revisora_registro.suplente, tercer_vocal: @comision_revisora_registro.tercer_vocal } }
    end

    assert_redirected_to comision_revisora_registro_url(ComisionRevisoraRegistro.last)
  end

  test "should show comision_revisora_registro" do
    get comision_revisora_registro_url(@comision_revisora_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_comision_revisora_registro_url(@comision_revisora_registro)
    assert_response :success
  end

  test "should update comision_revisora_registro" do
    patch comision_revisora_registro_url(@comision_revisora_registro), params: { comision_revisora_registro: { caso_id: @comision_revisora_registro.caso_id, presidente: @comision_revisora_registro.presidente, primer_vocal: @comision_revisora_registro.primer_vocal, secretario: @comision_revisora_registro.secretario, segundo_vocal: @comision_revisora_registro.segundo_vocal, suplente: @comision_revisora_registro.suplente, tercer_vocal: @comision_revisora_registro.tercer_vocal } }
    assert_redirected_to comision_revisora_registro_url(@comision_revisora_registro)
  end

  test "should destroy comision_revisora_registro" do
    assert_difference('ComisionRevisoraRegistro.count', -1) do
      delete comision_revisora_registro_url(@comision_revisora_registro)
    end

    assert_redirected_to comision_revisora_registros_url
  end
end
