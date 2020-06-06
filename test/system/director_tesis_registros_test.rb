require "application_system_test_case"

class DirectorTesisRegistrosTest < ApplicationSystemTestCase
  setup do
    @director_tesis_registro = director_tesis_registros(:one)
  end

  test "visiting the index" do
    visit director_tesis_registros_url
    assert_selector "h1", text: "Director Tesis Registros"
  end

  test "creating a Director tesis registro" do
    visit director_tesis_registros_url
    click_on "New Director Tesis Registro"

    fill_in "Caso", with: @director_tesis_registro.caso_id
    fill_in "Nombre", with: @director_tesis_registro.nombre
    click_on "Create Director tesis registro"

    assert_text "Director tesis registro was successfully created"
    click_on "Back"
  end

  test "updating a Director tesis registro" do
    visit director_tesis_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @director_tesis_registro.caso_id
    fill_in "Nombre", with: @director_tesis_registro.nombre
    click_on "Update Director tesis registro"

    assert_text "Director tesis registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Director tesis registro" do
    visit director_tesis_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Director tesis registro was successfully destroyed"
  end
end
