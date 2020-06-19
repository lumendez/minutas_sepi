require 'test_helper'

class CursarUnidadAprendizajeExternaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cursar_unidad_aprendizaje_externa_registro = cursar_unidad_aprendizaje_externa_registros(:one)
  end

  test "should get index" do
    get cursar_unidad_aprendizaje_externa_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cursar_unidad_aprendizaje_externa_registro_url
    assert_response :success
  end

  test "should create cursar_unidad_aprendizaje_externa_registro" do
    assert_difference('CursarUnidadAprendizajeExternaRegistro.count') do
      post cursar_unidad_aprendizaje_externa_registros_url, params: { cursar_unidad_aprendizaje_externa_registro: { caso_id: @cursar_unidad_aprendizaje_externa_registro.caso_id, clave: @cursar_unidad_aprendizaje_externa_registro.clave, creditos: @cursar_unidad_aprendizaje_externa_registro.creditos, nombre: @cursar_unidad_aprendizaje_externa_registro.nombre, unidad_academica: @cursar_unidad_aprendizaje_externa_registro.unidad_academica } }
    end

    assert_redirected_to cursar_unidad_aprendizaje_externa_registro_url(CursarUnidadAprendizajeExternaRegistro.last)
  end

  test "should show cursar_unidad_aprendizaje_externa_registro" do
    get cursar_unidad_aprendizaje_externa_registro_url(@cursar_unidad_aprendizaje_externa_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cursar_unidad_aprendizaje_externa_registro_url(@cursar_unidad_aprendizaje_externa_registro)
    assert_response :success
  end

  test "should update cursar_unidad_aprendizaje_externa_registro" do
    patch cursar_unidad_aprendizaje_externa_registro_url(@cursar_unidad_aprendizaje_externa_registro), params: { cursar_unidad_aprendizaje_externa_registro: { caso_id: @cursar_unidad_aprendizaje_externa_registro.caso_id, clave: @cursar_unidad_aprendizaje_externa_registro.clave, creditos: @cursar_unidad_aprendizaje_externa_registro.creditos, nombre: @cursar_unidad_aprendizaje_externa_registro.nombre, unidad_academica: @cursar_unidad_aprendizaje_externa_registro.unidad_academica } }
    assert_redirected_to cursar_unidad_aprendizaje_externa_registro_url(@cursar_unidad_aprendizaje_externa_registro)
  end

  test "should destroy cursar_unidad_aprendizaje_externa_registro" do
    assert_difference('CursarUnidadAprendizajeExternaRegistro.count', -1) do
      delete cursar_unidad_aprendizaje_externa_registro_url(@cursar_unidad_aprendizaje_externa_registro)
    end

    assert_redirected_to cursar_unidad_aprendizaje_externa_registros_url
  end
end
