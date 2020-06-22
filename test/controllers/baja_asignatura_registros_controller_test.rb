require 'test_helper'

class BajaAsignaturaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baja_asignatura_registro = baja_asignatura_registros(:one)
  end

  test "should get index" do
    get baja_asignatura_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_baja_asignatura_registro_url
    assert_response :success
  end

  test "should create baja_asignatura_registro" do
    assert_difference('BajaAsignaturaRegistro.count') do
      post baja_asignatura_registros_url, params: { baja_asignatura_registro: { asignatura_registro_id: @baja_asignatura_registro.asignatura_registro_id, caso_id: @baja_asignatura_registro.caso_id } }
    end

    assert_redirected_to baja_asignatura_registro_url(BajaAsignaturaRegistro.last)
  end

  test "should show baja_asignatura_registro" do
    get baja_asignatura_registro_url(@baja_asignatura_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_baja_asignatura_registro_url(@baja_asignatura_registro)
    assert_response :success
  end

  test "should update baja_asignatura_registro" do
    patch baja_asignatura_registro_url(@baja_asignatura_registro), params: { baja_asignatura_registro: { asignatura_registro_id: @baja_asignatura_registro.asignatura_registro_id, caso_id: @baja_asignatura_registro.caso_id } }
    assert_redirected_to baja_asignatura_registro_url(@baja_asignatura_registro)
  end

  test "should destroy baja_asignatura_registro" do
    assert_difference('BajaAsignaturaRegistro.count', -1) do
      delete baja_asignatura_registro_url(@baja_asignatura_registro)
    end

    assert_redirected_to baja_asignatura_registros_url
  end
end
