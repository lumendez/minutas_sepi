require 'test_helper'

class AmpliacionSemestreRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ampliacion_semestre_registro = ampliacion_semestre_registros(:one)
  end

  test "should get index" do
    get ampliacion_semestre_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_ampliacion_semestre_registro_url
    assert_response :success
  end

  test "should create ampliacion_semestre_registro" do
    assert_difference('AmpliacionSemestreRegistro.count') do
      post ampliacion_semestre_registros_url, params: { ampliacion_semestre_registro: { caso_id: @ampliacion_semestre_registro.caso_id, motivacion: @ampliacion_semestre_registro.motivacion } }
    end

    assert_redirected_to ampliacion_semestre_registro_url(AmpliacionSemestreRegistro.last)
  end

  test "should show ampliacion_semestre_registro" do
    get ampliacion_semestre_registro_url(@ampliacion_semestre_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_ampliacion_semestre_registro_url(@ampliacion_semestre_registro)
    assert_response :success
  end

  test "should update ampliacion_semestre_registro" do
    patch ampliacion_semestre_registro_url(@ampliacion_semestre_registro), params: { ampliacion_semestre_registro: { caso_id: @ampliacion_semestre_registro.caso_id, motivacion: @ampliacion_semestre_registro.motivacion } }
    assert_redirected_to ampliacion_semestre_registro_url(@ampliacion_semestre_registro)
  end

  test "should destroy ampliacion_semestre_registro" do
    assert_difference('AmpliacionSemestreRegistro.count', -1) do
      delete ampliacion_semestre_registro_url(@ampliacion_semestre_registro)
    end

    assert_redirected_to ampliacion_semestre_registros_url
  end
end
