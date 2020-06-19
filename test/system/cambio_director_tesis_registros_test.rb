require "application_system_test_case"

class CambioDirectorTesisRegistrosTest < ApplicationSystemTestCase
  setup do
    @cambio_director_tesis_registro = cambio_director_tesis_registros(:one)
  end

  test "visiting the index" do
    visit cambio_director_tesis_registros_url
    assert_selector "h1", text: "Cambio Director Tesis Registros"
  end

  test "creating a Cambio director tesis registro" do
    visit cambio_director_tesis_registros_url
    click_on "New Cambio Director Tesis Registro"

    fill_in "Caso", with: @cambio_director_tesis_registro.caso_id
    fill_in "Nombre", with: @cambio_director_tesis_registro.nombre
    fill_in "Nombre segundo director", with: @cambio_director_tesis_registro.nombre_segundo_director
    click_on "Create Cambio director tesis registro"

    assert_text "Cambio director tesis registro was successfully created"
    click_on "Back"
  end

  test "updating a Cambio director tesis registro" do
    visit cambio_director_tesis_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @cambio_director_tesis_registro.caso_id
    fill_in "Nombre", with: @cambio_director_tesis_registro.nombre
    fill_in "Nombre segundo director", with: @cambio_director_tesis_registro.nombre_segundo_director
    click_on "Update Cambio director tesis registro"

    assert_text "Cambio director tesis registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cambio director tesis registro" do
    visit cambio_director_tesis_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cambio director tesis registro was successfully destroyed"
  end
end
