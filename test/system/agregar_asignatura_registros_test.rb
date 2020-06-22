require "application_system_test_case"

class AgregarAsignaturaRegistrosTest < ApplicationSystemTestCase
  setup do
    @agregar_asignatura_registro = agregar_asignatura_registros(:one)
  end

  test "visiting the index" do
    visit agregar_asignatura_registros_url
    assert_selector "h1", text: "Agregar Asignatura Registros"
  end

  test "creating a Agregar asignatura registro" do
    visit agregar_asignatura_registros_url
    click_on "New Agregar Asignatura Registro"

    fill_in "Asignatura registro", with: @agregar_asignatura_registro.asignatura_registro_id
    fill_in "Caso", with: @agregar_asignatura_registro.caso_id
    click_on "Create Agregar asignatura registro"

    assert_text "Agregar asignatura registro was successfully created"
    click_on "Back"
  end

  test "updating a Agregar asignatura registro" do
    visit agregar_asignatura_registros_url
    click_on "Edit", match: :first

    fill_in "Asignatura registro", with: @agregar_asignatura_registro.asignatura_registro_id
    fill_in "Caso", with: @agregar_asignatura_registro.caso_id
    click_on "Update Agregar asignatura registro"

    assert_text "Agregar asignatura registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Agregar asignatura registro" do
    visit agregar_asignatura_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agregar asignatura registro was successfully destroyed"
  end
end
