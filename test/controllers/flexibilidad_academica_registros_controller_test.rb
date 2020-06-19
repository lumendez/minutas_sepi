require 'test_helper'

class FlexibilidadAcademicaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flexibilidad_academica_registro = flexibilidad_academica_registros(:one)
  end

  test "should get index" do
    get flexibilidad_academica_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_flexibilidad_academica_registro_url
    assert_response :success
  end

  test "should create flexibilidad_academica_registro" do
    assert_difference('FlexibilidadAcademicaRegistro.count') do
      post flexibilidad_academica_registros_url, params: { flexibilidad_academica_registro: { caso_id: @flexibilidad_academica_registro.caso_id, nombre: @flexibilidad_academica_registro.nombre } }
    end

    assert_redirected_to flexibilidad_academica_registro_url(FlexibilidadAcademicaRegistro.last)
  end

  test "should show flexibilidad_academica_registro" do
    get flexibilidad_academica_registro_url(@flexibilidad_academica_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_flexibilidad_academica_registro_url(@flexibilidad_academica_registro)
    assert_response :success
  end

  test "should update flexibilidad_academica_registro" do
    patch flexibilidad_academica_registro_url(@flexibilidad_academica_registro), params: { flexibilidad_academica_registro: { caso_id: @flexibilidad_academica_registro.caso_id, nombre: @flexibilidad_academica_registro.nombre } }
    assert_redirected_to flexibilidad_academica_registro_url(@flexibilidad_academica_registro)
  end

  test "should destroy flexibilidad_academica_registro" do
    assert_difference('FlexibilidadAcademicaRegistro.count', -1) do
      delete flexibilidad_academica_registro_url(@flexibilidad_academica_registro)
    end

    assert_redirected_to flexibilidad_academica_registros_url
  end
end
