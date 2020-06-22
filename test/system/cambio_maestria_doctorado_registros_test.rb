require "application_system_test_case"

class CambioMaestriaDoctoradoRegistrosTest < ApplicationSystemTestCase
  setup do
    @cambio_maestria_doctorado_registro = cambio_maestria_doctorado_registros(:one)
  end

  test "visiting the index" do
    visit cambio_maestria_doctorado_registros_url
    assert_selector "h1", text: "Cambio Maestria Doctorado Registros"
  end

  test "creating a Cambio maestria doctorado registro" do
    visit cambio_maestria_doctorado_registros_url
    click_on "New Cambio Maestria Doctorado Registro"

    fill_in "Caso", with: @cambio_maestria_doctorado_registro.caso_id
    fill_in "Motivacion", with: @cambio_maestria_doctorado_registro.motivacion
    click_on "Create Cambio maestria doctorado registro"

    assert_text "Cambio maestria doctorado registro was successfully created"
    click_on "Back"
  end

  test "updating a Cambio maestria doctorado registro" do
    visit cambio_maestria_doctorado_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @cambio_maestria_doctorado_registro.caso_id
    fill_in "Motivacion", with: @cambio_maestria_doctorado_registro.motivacion
    click_on "Update Cambio maestria doctorado registro"

    assert_text "Cambio maestria doctorado registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cambio maestria doctorado registro" do
    visit cambio_maestria_doctorado_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cambio maestria doctorado registro was successfully destroyed"
  end
end
