require 'test_helper'

class CambioComiteTutorialRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cambio_comite_tutorial_registro = cambio_comite_tutorial_registros(:one)
  end

  test "should get index" do
    get cambio_comite_tutorial_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_cambio_comite_tutorial_registro_url
    assert_response :success
  end

  test "should create cambio_comite_tutorial_registro" do
    assert_difference('CambioComiteTutorialRegistro.count') do
      post cambio_comite_tutorial_registros_url, params: { cambio_comite_tutorial_registro: { caso_id: @cambio_comite_tutorial_registro.caso_id, cuarto_tutor: @cambio_comite_tutorial_registro.cuarto_tutor, primer_tutor: @cambio_comite_tutorial_registro.primer_tutor, quinto_tutor: @cambio_comite_tutorial_registro.quinto_tutor, segundo_tutor: @cambio_comite_tutorial_registro.segundo_tutor, tercer_tutor: @cambio_comite_tutorial_registro.tercer_tutor } }
    end

    assert_redirected_to cambio_comite_tutorial_registro_url(CambioComiteTutorialRegistro.last)
  end

  test "should show cambio_comite_tutorial_registro" do
    get cambio_comite_tutorial_registro_url(@cambio_comite_tutorial_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cambio_comite_tutorial_registro_url(@cambio_comite_tutorial_registro)
    assert_response :success
  end

  test "should update cambio_comite_tutorial_registro" do
    patch cambio_comite_tutorial_registro_url(@cambio_comite_tutorial_registro), params: { cambio_comite_tutorial_registro: { caso_id: @cambio_comite_tutorial_registro.caso_id, cuarto_tutor: @cambio_comite_tutorial_registro.cuarto_tutor, primer_tutor: @cambio_comite_tutorial_registro.primer_tutor, quinto_tutor: @cambio_comite_tutorial_registro.quinto_tutor, segundo_tutor: @cambio_comite_tutorial_registro.segundo_tutor, tercer_tutor: @cambio_comite_tutorial_registro.tercer_tutor } }
    assert_redirected_to cambio_comite_tutorial_registro_url(@cambio_comite_tutorial_registro)
  end

  test "should destroy cambio_comite_tutorial_registro" do
    assert_difference('CambioComiteTutorialRegistro.count', -1) do
      delete cambio_comite_tutorial_registro_url(@cambio_comite_tutorial_registro)
    end

    assert_redirected_to cambio_comite_tutorial_registros_url
  end
end
