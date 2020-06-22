require 'test_helper'

class AgregarAsignaturaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agregar_asignatura_registro = agregar_asignatura_registros(:one)
  end

  test "should get index" do
    get agregar_asignatura_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_agregar_asignatura_registro_url
    assert_response :success
  end

  test "should create agregar_asignatura_registro" do
    assert_difference('AgregarAsignaturaRegistro.count') do
      post agregar_asignatura_registros_url, params: { agregar_asignatura_registro: { asignatura_registro_id: @agregar_asignatura_registro.asignatura_registro_id, caso_id: @agregar_asignatura_registro.caso_id } }
    end

    assert_redirected_to agregar_asignatura_registro_url(AgregarAsignaturaRegistro.last)
  end

  test "should show agregar_asignatura_registro" do
    get agregar_asignatura_registro_url(@agregar_asignatura_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_agregar_asignatura_registro_url(@agregar_asignatura_registro)
    assert_response :success
  end

  test "should update agregar_asignatura_registro" do
    patch agregar_asignatura_registro_url(@agregar_asignatura_registro), params: { agregar_asignatura_registro: { asignatura_registro_id: @agregar_asignatura_registro.asignatura_registro_id, caso_id: @agregar_asignatura_registro.caso_id } }
    assert_redirected_to agregar_asignatura_registro_url(@agregar_asignatura_registro)
  end

  test "should destroy agregar_asignatura_registro" do
    assert_difference('AgregarAsignaturaRegistro.count', -1) do
      delete agregar_asignatura_registro_url(@agregar_asignatura_registro)
    end

    assert_redirected_to agregar_asignatura_registros_url
  end
end
