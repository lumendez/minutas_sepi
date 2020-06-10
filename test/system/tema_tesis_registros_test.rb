require "application_system_test_case"

class TemaTesisRegistrosTest < ApplicationSystemTestCase
  setup do
    @tema_tesis_registro = tema_tesis_registros(:one)
  end

  test "visiting the index" do
    visit tema_tesis_registros_url
    assert_selector "h1", text: "Tema Tesis Registros"
  end

  test "creating a Tema tesis registro" do
    visit tema_tesis_registros_url
    click_on "New Tema Tesis Registro"

    fill_in "Nombre", with: @tema_tesis_registro.nombre
    click_on "Create Tema tesis registro"

    assert_text "Tema tesis registro was successfully created"
    click_on "Back"
  end

  test "updating a Tema tesis registro" do
    visit tema_tesis_registros_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tema_tesis_registro.nombre
    click_on "Update Tema tesis registro"

    assert_text "Tema tesis registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Tema tesis registro" do
    visit tema_tesis_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tema tesis registro was successfully destroyed"
  end
end
