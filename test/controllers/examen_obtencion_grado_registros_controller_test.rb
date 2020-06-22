require 'test_helper'

class ExamenObtencionGradoRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examen_obtencion_grado_registro = examen_obtencion_grado_registros(:one)
  end

  test "should get index" do
    get examen_obtencion_grado_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_examen_obtencion_grado_registro_url
    assert_response :success
  end

  test "should create examen_obtencion_grado_registro" do
    assert_difference('ExamenObtencionGradoRegistro.count') do
      post examen_obtencion_grado_registros_url, params: { examen_obtencion_grado_registro: { caso_id: @examen_obtencion_grado_registro.caso_id, motivacion: @examen_obtencion_grado_registro.motivacion } }
    end

    assert_redirected_to examen_obtencion_grado_registro_url(ExamenObtencionGradoRegistro.last)
  end

  test "should show examen_obtencion_grado_registro" do
    get examen_obtencion_grado_registro_url(@examen_obtencion_grado_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_examen_obtencion_grado_registro_url(@examen_obtencion_grado_registro)
    assert_response :success
  end

  test "should update examen_obtencion_grado_registro" do
    patch examen_obtencion_grado_registro_url(@examen_obtencion_grado_registro), params: { examen_obtencion_grado_registro: { caso_id: @examen_obtencion_grado_registro.caso_id, motivacion: @examen_obtencion_grado_registro.motivacion } }
    assert_redirected_to examen_obtencion_grado_registro_url(@examen_obtencion_grado_registro)
  end

  test "should destroy examen_obtencion_grado_registro" do
    assert_difference('ExamenObtencionGradoRegistro.count', -1) do
      delete examen_obtencion_grado_registro_url(@examen_obtencion_grado_registro)
    end

    assert_redirected_to examen_obtencion_grado_registros_url
  end
end
