require 'test_helper'

class AsignaturaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignatura_registro = asignatura_registros(:one)
  end

  test "should get index" do
    get asignatura_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_asignatura_registro_url
    assert_response :success
  end

  test "should create asignatura_registro" do
    assert_difference('AsignaturaRegistro.count') do
      post asignatura_registros_url, params: { asignatura_registro: { clave: @asignatura_registro.clave, creditos: @asignatura_registro.creditos, nombre: @asignatura_registro.nombre, programa_posgrado_registro_id: @asignatura_registro.programa_posgrado_registro_id } }
    end

    assert_redirected_to asignatura_registro_url(AsignaturaRegistro.last)
  end

  test "should show asignatura_registro" do
    get asignatura_registro_url(@asignatura_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignatura_registro_url(@asignatura_registro)
    assert_response :success
  end

  test "should update asignatura_registro" do
    patch asignatura_registro_url(@asignatura_registro), params: { asignatura_registro: { clave: @asignatura_registro.clave, creditos: @asignatura_registro.creditos, nombre: @asignatura_registro.nombre, programa_posgrado_registro_id: @asignatura_registro.programa_posgrado_registro_id } }
    assert_redirected_to asignatura_registro_url(@asignatura_registro)
  end

  test "should destroy asignatura_registro" do
    assert_difference('AsignaturaRegistro.count', -1) do
      delete asignatura_registro_url(@asignatura_registro)
    end

    assert_redirected_to asignatura_registros_url
  end
end
