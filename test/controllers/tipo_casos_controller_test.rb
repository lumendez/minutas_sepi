require 'test_helper'

class TipoCasosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_caso = tipo_casos(:one)
  end

  test "should get index" do
    get tipo_casos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_caso_url
    assert_response :success
  end

  test "should create tipo_caso" do
    assert_difference('TipoCaso.count') do
      post tipo_casos_url, params: { tipo_caso: { nombre: @tipo_caso.nombre } }
    end

    assert_redirected_to tipo_caso_url(TipoCaso.last)
  end

  test "should show tipo_caso" do
    get tipo_caso_url(@tipo_caso)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_caso_url(@tipo_caso)
    assert_response :success
  end

  test "should update tipo_caso" do
    patch tipo_caso_url(@tipo_caso), params: { tipo_caso: { nombre: @tipo_caso.nombre } }
    assert_redirected_to tipo_caso_url(@tipo_caso)
  end

  test "should destroy tipo_caso" do
    assert_difference('TipoCaso.count', -1) do
      delete tipo_caso_url(@tipo_caso)
    end

    assert_redirected_to tipo_casos_url
  end
end
