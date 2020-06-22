require "application_system_test_case"

class AmpliacionSemestreRegistrosTest < ApplicationSystemTestCase
  setup do
    @ampliacion_semestre_registro = ampliacion_semestre_registros(:one)
  end

  test "visiting the index" do
    visit ampliacion_semestre_registros_url
    assert_selector "h1", text: "Ampliacion Semestre Registros"
  end

  test "creating a Ampliacion semestre registro" do
    visit ampliacion_semestre_registros_url
    click_on "New Ampliacion Semestre Registro"

    fill_in "Caso", with: @ampliacion_semestre_registro.caso_id
    fill_in "Motivacion", with: @ampliacion_semestre_registro.motivacion
    click_on "Create Ampliacion semestre registro"

    assert_text "Ampliacion semestre registro was successfully created"
    click_on "Back"
  end

  test "updating a Ampliacion semestre registro" do
    visit ampliacion_semestre_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @ampliacion_semestre_registro.caso_id
    fill_in "Motivacion", with: @ampliacion_semestre_registro.motivacion
    click_on "Update Ampliacion semestre registro"

    assert_text "Ampliacion semestre registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Ampliacion semestre registro" do
    visit ampliacion_semestre_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ampliacion semestre registro was successfully destroyed"
  end
end
