require "application_system_test_case"

class ProgramaPosgradoRegistrosTest < ApplicationSystemTestCase
  setup do
    @programa_posgrado_registro = programa_posgrado_registros(:one)
  end

  test "visiting the index" do
    visit programa_posgrado_registros_url
    assert_selector "h1", text: "Programa Posgrado Registros"
  end

  test "creating a Programa posgrado registro" do
    visit programa_posgrado_registros_url
    click_on "New Programa Posgrado Registro"

    fill_in "Nombre", with: @programa_posgrado_registro.nombre
    click_on "Create Programa posgrado registro"

    assert_text "Programa posgrado registro was successfully created"
    click_on "Back"
  end

  test "updating a Programa posgrado registro" do
    visit programa_posgrado_registros_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @programa_posgrado_registro.nombre
    click_on "Update Programa posgrado registro"

    assert_text "Programa posgrado registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Programa posgrado registro" do
    visit programa_posgrado_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programa posgrado registro was successfully destroyed"
  end
end
