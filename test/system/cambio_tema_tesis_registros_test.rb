require "application_system_test_case"

class CambioTemaTesisRegistrosTest < ApplicationSystemTestCase
  setup do
    @cambio_tema_tesis_registro = cambio_tema_tesis_registros(:one)
  end

  test "visiting the index" do
    visit cambio_tema_tesis_registros_url
    assert_selector "h1", text: "Cambio Tema Tesis Registros"
  end

  test "creating a Cambio tema tesis registro" do
    visit cambio_tema_tesis_registros_url
    click_on "New Cambio Tema Tesis Registro"

    fill_in "Caso", with: @cambio_tema_tesis_registro.caso_id
    fill_in "Nombre", with: @cambio_tema_tesis_registro.nombre
    click_on "Create Cambio tema tesis registro"

    assert_text "Cambio tema tesis registro was successfully created"
    click_on "Back"
  end

  test "updating a Cambio tema tesis registro" do
    visit cambio_tema_tesis_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @cambio_tema_tesis_registro.caso_id
    fill_in "Nombre", with: @cambio_tema_tesis_registro.nombre
    click_on "Update Cambio tema tesis registro"

    assert_text "Cambio tema tesis registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cambio tema tesis registro" do
    visit cambio_tema_tesis_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cambio tema tesis registro was successfully destroyed"
  end
end
