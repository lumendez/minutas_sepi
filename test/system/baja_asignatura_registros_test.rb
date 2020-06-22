require "application_system_test_case"

class BajaAsignaturaRegistrosTest < ApplicationSystemTestCase
  setup do
    @baja_asignatura_registro = baja_asignatura_registros(:one)
  end

  test "visiting the index" do
    visit baja_asignatura_registros_url
    assert_selector "h1", text: "Baja Asignatura Registros"
  end

  test "creating a Baja asignatura registro" do
    visit baja_asignatura_registros_url
    click_on "New Baja Asignatura Registro"

    fill_in "Asignatura registro", with: @baja_asignatura_registro.asignatura_registro_id
    fill_in "Caso", with: @baja_asignatura_registro.caso_id
    click_on "Create Baja asignatura registro"

    assert_text "Baja asignatura registro was successfully created"
    click_on "Back"
  end

  test "updating a Baja asignatura registro" do
    visit baja_asignatura_registros_url
    click_on "Edit", match: :first

    fill_in "Asignatura registro", with: @baja_asignatura_registro.asignatura_registro_id
    fill_in "Caso", with: @baja_asignatura_registro.caso_id
    click_on "Update Baja asignatura registro"

    assert_text "Baja asignatura registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Baja asignatura registro" do
    visit baja_asignatura_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baja asignatura registro was successfully destroyed"
  end
end
