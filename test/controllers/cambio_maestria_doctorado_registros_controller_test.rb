require 'test_helper'

class CambioMaestriaDoctoradoRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_maestria_doctorado_registro = cambio_maestria_doctorado_registros(:one)
  end

  test "should get index" do
    get cambio_maestria_doctorado_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_maestria_doctorado_registro_url
    assert_response :success
  end

  test "should create cambio_maestria_doctorado_registro" do
    assert_difference('CambioMaestriaDoctoradoRegistro.count') do
      post cambio_maestria_doctorado_registros_url, params: { cambio_maestria_doctorado_registro: { caso_id: @cambio_maestria_doctorado_registro.caso_id, motivacion: @cambio_maestria_doctorado_registro.motivacion } }
    end

    assert_redirected_to cambio_maestria_doctorado_registro_url(CambioMaestriaDoctoradoRegistro.last)
  end

  test "should show cambio_maestria_doctorado_registro" do
    get cambio_maestria_doctorado_registro_url(@cambio_maestria_doctorado_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_maestria_doctorado_registro_url(@cambio_maestria_doctorado_registro)
    assert_response :success
  end

  test "should update cambio_maestria_doctorado_registro" do
    patch cambio_maestria_doctorado_registro_url(@cambio_maestria_doctorado_registro), params: { cambio_maestria_doctorado_registro: { caso_id: @cambio_maestria_doctorado_registro.caso_id, motivacion: @cambio_maestria_doctorado_registro.motivacion } }
    assert_redirected_to cambio_maestria_doctorado_registro_url(@cambio_maestria_doctorado_registro)
  end

  test "should destroy cambio_maestria_doctorado_registro" do
    assert_difference('CambioMaestriaDoctoradoRegistro.count', -1) do
      delete cambio_maestria_doctorado_registro_url(@cambio_maestria_doctorado_registro)
    end

    assert_redirected_to cambio_maestria_doctorado_registros_url
  end
end
