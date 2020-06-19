require 'test_helper'

class SolicitudProgramaMovilidadRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_programa_movilidad_registro = solicitud_programa_movilidad_registros(:one)
  end

  test "should get index" do
    get solicitud_programa_movilidad_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_programa_movilidad_registro_url
    assert_response :success
  end

  test "should create solicitud_programa_movilidad_registro" do
    assert_difference('SolicitudProgramaMovilidadRegistro.count') do
      post solicitud_programa_movilidad_registros_url, params: { solicitud_programa_movilidad_registro: { caso_id: @solicitud_programa_movilidad_registro.caso_id, nombre: @solicitud_programa_movilidad_registro.nombre, nombre_institucion: @solicitud_programa_movilidad_registro.nombre_institucion } }
    end

    assert_redirected_to solicitud_programa_movilidad_registro_url(SolicitudProgramaMovilidadRegistro.last)
  end

  test "should show solicitud_programa_movilidad_registro" do
    get solicitud_programa_movilidad_registro_url(@solicitud_programa_movilidad_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_programa_movilidad_registro_url(@solicitud_programa_movilidad_registro)
    assert_response :success
  end

  test "should update solicitud_programa_movilidad_registro" do
    patch solicitud_programa_movilidad_registro_url(@solicitud_programa_movilidad_registro), params: { solicitud_programa_movilidad_registro: { caso_id: @solicitud_programa_movilidad_registro.caso_id, nombre: @solicitud_programa_movilidad_registro.nombre, nombre_institucion: @solicitud_programa_movilidad_registro.nombre_institucion } }
    assert_redirected_to solicitud_programa_movilidad_registro_url(@solicitud_programa_movilidad_registro)
  end

  test "should destroy solicitud_programa_movilidad_registro" do
    assert_difference('SolicitudProgramaMovilidadRegistro.count', -1) do
      delete solicitud_programa_movilidad_registro_url(@solicitud_programa_movilidad_registro)
    end

    assert_redirected_to solicitud_programa_movilidad_registros_url
  end
end
