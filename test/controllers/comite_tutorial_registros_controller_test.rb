require 'test_helper'

class ComiteTutorialRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comite_tutorial_registro = comite_tutorial_registros(:one)
  end

  test "should get index" do
    get comite_tutorial_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_comite_tutorial_registro_url
    assert_response :success
  end

  test "should create comite_tutorial_registro" do
    assert_difference('ComiteTutorialRegistro.count') do
      post comite_tutorial_registros_url, params: { comite_tutorial_registro: { caso_id: @comite_tutorial_registro.caso_id, cuarto_tutor: @comite_tutorial_registro.cuarto_tutor, primer_tutor: @comite_tutorial_registro.primer_tutor, quinto_tutor: @comite_tutorial_registro.quinto_tutor, segundo_tutor: @comite_tutorial_registro.segundo_tutor, tercer_tutor: @comite_tutorial_registro.tercer_tutor } }
    end

    assert_redirected_to comite_tutorial_registro_url(ComiteTutorialRegistro.last)
  end

  test "should show comite_tutorial_registro" do
    get comite_tutorial_registro_url(@comite_tutorial_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_comite_tutorial_registro_url(@comite_tutorial_registro)
    assert_response :success
  end

  test "should update comite_tutorial_registro" do
    patch comite_tutorial_registro_url(@comite_tutorial_registro), params: { comite_tutorial_registro: { caso_id: @comite_tutorial_registro.caso_id, cuarto_tutor: @comite_tutorial_registro.cuarto_tutor, primer_tutor: @comite_tutorial_registro.primer_tutor, quinto_tutor: @comite_tutorial_registro.quinto_tutor, segundo_tutor: @comite_tutorial_registro.segundo_tutor, tercer_tutor: @comite_tutorial_registro.tercer_tutor } }
    assert_redirected_to comite_tutorial_registro_url(@comite_tutorial_registro)
  end

  test "should destroy comite_tutorial_registro" do
    assert_difference('ComiteTutorialRegistro.count', -1) do
      delete comite_tutorial_registro_url(@comite_tutorial_registro)
    end

    assert_redirected_to comite_tutorial_registros_url
  end
end
