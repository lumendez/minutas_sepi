require "application_system_test_case"

class AsignaturaRegistrosTest < ApplicationSystemTestCase
  setup do
    @asignatura_registro = asignatura_registros(:one)
  end

  test "visiting the index" do
    visit asignatura_registros_url
    assert_selector "h1", text: "Asignatura Registros"
  end

  test "creating a Asignatura registro" do
    visit asignatura_registros_url
    click_on "New Asignatura Registro"

    fill_in "Clave", with: @asignatura_registro.clave
    fill_in "Creditos", with: @asignatura_registro.creditos
    fill_in "Nombre", with: @asignatura_registro.nombre
    fill_in "Programa posgrado registro", with: @asignatura_registro.programa_posgrado_registro_id
    click_on "Create Asignatura registro"

    assert_text "Asignatura registro was successfully created"
    click_on "Back"
  end

  test "updating a Asignatura registro" do
    visit asignatura_registros_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @asignatura_registro.clave
    fill_in "Creditos", with: @asignatura_registro.creditos
    fill_in "Nombre", with: @asignatura_registro.nombre
    fill_in "Programa posgrado registro", with: @asignatura_registro.programa_posgrado_registro_id
    click_on "Update Asignatura registro"

    assert_text "Asignatura registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Asignatura registro" do
    visit asignatura_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asignatura registro was successfully destroyed"
  end
end
