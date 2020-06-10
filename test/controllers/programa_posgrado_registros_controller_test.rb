require 'test_helper'

class ProgramaPosgradoRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programa_posgrado_registro = programa_posgrado_registros(:one)
  end

  test "should get index" do
    get programa_posgrado_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_programa_posgrado_registro_url
    assert_response :success
  end

  test "should create programa_posgrado_registro" do
    assert_difference('ProgramaPosgradoRegistro.count') do
      post programa_posgrado_registros_url, params: { programa_posgrado_registro: { nombre: @programa_posgrado_registro.nombre } }
    end

    assert_redirected_to programa_posgrado_registro_url(ProgramaPosgradoRegistro.last)
  end

  test "should show programa_posgrado_registro" do
    get programa_posgrado_registro_url(@programa_posgrado_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_programa_posgrado_registro_url(@programa_posgrado_registro)
    assert_response :success
  end

  test "should update programa_posgrado_registro" do
    patch programa_posgrado_registro_url(@programa_posgrado_registro), params: { programa_posgrado_registro: { nombre: @programa_posgrado_registro.nombre } }
    assert_redirected_to programa_posgrado_registro_url(@programa_posgrado_registro)
  end

  test "should destroy programa_posgrado_registro" do
    assert_difference('ProgramaPosgradoRegistro.count', -1) do
      delete programa_posgrado_registro_url(@programa_posgrado_registro)
    end

    assert_redirected_to programa_posgrado_registros_url
  end
end
