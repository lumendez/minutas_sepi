require "application_system_test_case"

class ExamenObtencionGradoRegistrosTest < ApplicationSystemTestCase
  setup do
    @examen_obtencion_grado_registro = examen_obtencion_grado_registros(:one)
  end

  test "visiting the index" do
    visit examen_obtencion_grado_registros_url
    assert_selector "h1", text: "Examen Obtencion Grado Registros"
  end

  test "creating a Examen obtencion grado registro" do
    visit examen_obtencion_grado_registros_url
    click_on "New Examen Obtencion Grado Registro"

    fill_in "Caso", with: @examen_obtencion_grado_registro.caso_id
    fill_in "Motivacion", with: @examen_obtencion_grado_registro.motivacion
    click_on "Create Examen obtencion grado registro"

    assert_text "Examen obtencion grado registro was successfully created"
    click_on "Back"
  end

  test "updating a Examen obtencion grado registro" do
    visit examen_obtencion_grado_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @examen_obtencion_grado_registro.caso_id
    fill_in "Motivacion", with: @examen_obtencion_grado_registro.motivacion
    click_on "Update Examen obtencion grado registro"

    assert_text "Examen obtencion grado registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Examen obtencion grado registro" do
    visit examen_obtencion_grado_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Examen obtencion grado registro was successfully destroyed"
  end
end
