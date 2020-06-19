require "application_system_test_case"

class CursarUnidadAprendizajeExternaRegistrosTest < ApplicationSystemTestCase
  setup do
    @cursar_unidad_aprendizaje_externa_registro = cursar_unidad_aprendizaje_externa_registros(:one)
  end

  test "visiting the index" do
    visit cursar_unidad_aprendizaje_externa_registros_url
    assert_selector "h1", text: "Cursar Unidad Aprendizaje Externa Registros"
  end

  test "creating a Cursar unidad aprendizaje externa registro" do
    visit cursar_unidad_aprendizaje_externa_registros_url
    click_on "New Cursar Unidad Aprendizaje Externa Registro"

    fill_in "Caso", with: @cursar_unidad_aprendizaje_externa_registro.caso_id
    fill_in "Clave", with: @cursar_unidad_aprendizaje_externa_registro.clave
    fill_in "Creditos", with: @cursar_unidad_aprendizaje_externa_registro.creditos
    fill_in "Nombre", with: @cursar_unidad_aprendizaje_externa_registro.nombre
    fill_in "Unidad academica", with: @cursar_unidad_aprendizaje_externa_registro.unidad_academica
    click_on "Create Cursar unidad aprendizaje externa registro"

    assert_text "Cursar unidad aprendizaje externa registro was successfully created"
    click_on "Back"
  end

  test "updating a Cursar unidad aprendizaje externa registro" do
    visit cursar_unidad_aprendizaje_externa_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @cursar_unidad_aprendizaje_externa_registro.caso_id
    fill_in "Clave", with: @cursar_unidad_aprendizaje_externa_registro.clave
    fill_in "Creditos", with: @cursar_unidad_aprendizaje_externa_registro.creditos
    fill_in "Nombre", with: @cursar_unidad_aprendizaje_externa_registro.nombre
    fill_in "Unidad academica", with: @cursar_unidad_aprendizaje_externa_registro.unidad_academica
    click_on "Update Cursar unidad aprendizaje externa registro"

    assert_text "Cursar unidad aprendizaje externa registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cursar unidad aprendizaje externa registro" do
    visit cursar_unidad_aprendizaje_externa_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cursar unidad aprendizaje externa registro was successfully destroyed"
  end
end
