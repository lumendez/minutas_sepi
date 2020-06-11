require 'test_helper'

class RecursamientoOtraUnidadRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recursamiento_otra_unidad_registro = recursamiento_otra_unidad_registros(:one)
  end

  test "should get index" do
    get recursamiento_otra_unidad_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_recursamiento_otra_unidad_registro_url
    assert_response :success
  end

  test "should create recursamiento_otra_unidad_registro" do
    assert_difference('RecursamientoOtraUnidadRegistro.count') do
      post recursamiento_otra_unidad_registros_url, params: { recursamiento_otra_unidad_registro: { caso_id: @recursamiento_otra_unidad_registro.caso_id, clave: @recursamiento_otra_unidad_registro.clave, creditos: @recursamiento_otra_unidad_registro.creditos, nombre: @recursamiento_otra_unidad_registro.nombre, nombre_unidad_academica: @recursamiento_otra_unidad_registro.nombre_unidad_academica } }
    end

    assert_redirected_to recursamiento_otra_unidad_registro_url(RecursamientoOtraUnidadRegistro.last)
  end

  test "should show recursamiento_otra_unidad_registro" do
    get recursamiento_otra_unidad_registro_url(@recursamiento_otra_unidad_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_recursamiento_otra_unidad_registro_url(@recursamiento_otra_unidad_registro)
    assert_response :success
  end

  test "should update recursamiento_otra_unidad_registro" do
    patch recursamiento_otra_unidad_registro_url(@recursamiento_otra_unidad_registro), params: { recursamiento_otra_unidad_registro: { caso_id: @recursamiento_otra_unidad_registro.caso_id, clave: @recursamiento_otra_unidad_registro.clave, creditos: @recursamiento_otra_unidad_registro.creditos, nombre: @recursamiento_otra_unidad_registro.nombre, nombre_unidad_academica: @recursamiento_otra_unidad_registro.nombre_unidad_academica } }
    assert_redirected_to recursamiento_otra_unidad_registro_url(@recursamiento_otra_unidad_registro)
  end

  test "should destroy recursamiento_otra_unidad_registro" do
    assert_difference('RecursamientoOtraUnidadRegistro.count', -1) do
      delete recursamiento_otra_unidad_registro_url(@recursamiento_otra_unidad_registro)
    end

    assert_redirected_to recursamiento_otra_unidad_registros_url
  end
end
