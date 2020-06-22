require "application_system_test_case"

class SegundoDirectorTesisRegistrosTest < ApplicationSystemTestCase
  setup do
    @segundo_director_tesis_registro = segundo_director_tesis_registros(:one)
  end

  test "visiting the index" do
    visit segundo_director_tesis_registros_url
    assert_selector "h1", text: "Segundo Director Tesis Registros"
  end

  test "creating a Segundo director tesis registro" do
    visit segundo_director_tesis_registros_url
    click_on "New Segundo Director Tesis Registro"

    fill_in "Caso", with: @segundo_director_tesis_registro.caso_id
    fill_in "Nombre", with: @segundo_director_tesis_registro.nombre
    click_on "Create Segundo director tesis registro"

    assert_text "Segundo director tesis registro was successfully created"
    click_on "Back"
  end

  test "updating a Segundo director tesis registro" do
    visit segundo_director_tesis_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @segundo_director_tesis_registro.caso_id
    fill_in "Nombre", with: @segundo_director_tesis_registro.nombre
    click_on "Update Segundo director tesis registro"

    assert_text "Segundo director tesis registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Segundo director tesis registro" do
    visit segundo_director_tesis_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Segundo director tesis registro was successfully destroyed"
  end
end
