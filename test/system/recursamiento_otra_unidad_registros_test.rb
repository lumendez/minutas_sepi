require "application_system_test_case"

class RecursamientoOtraUnidadRegistrosTest < ApplicationSystemTestCase
  setup do
    @recursamiento_otra_unidad_registro = recursamiento_otra_unidad_registros(:one)
  end

  test "visiting the index" do
    visit recursamiento_otra_unidad_registros_url
    assert_selector "h1", text: "Recursamiento Otra Unidad Registros"
  end

  test "creating a Recursamiento otra unidad registro" do
    visit recursamiento_otra_unidad_registros_url
    click_on "New Recursamiento Otra Unidad Registro"

    fill_in "Caso", with: @recursamiento_otra_unidad_registro.caso_id
    fill_in "Clave", with: @recursamiento_otra_unidad_registro.clave
    fill_in "Creditos", with: @recursamiento_otra_unidad_registro.creditos
    fill_in "Nombre", with: @recursamiento_otra_unidad_registro.nombre
    fill_in "Nombre unidad academica", with: @recursamiento_otra_unidad_registro.nombre_unidad_academica
    click_on "Create Recursamiento otra unidad registro"

    assert_text "Recursamiento otra unidad registro was successfully created"
    click_on "Back"
  end

  test "updating a Recursamiento otra unidad registro" do
    visit recursamiento_otra_unidad_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @recursamiento_otra_unidad_registro.caso_id
    fill_in "Clave", with: @recursamiento_otra_unidad_registro.clave
    fill_in "Creditos", with: @recursamiento_otra_unidad_registro.creditos
    fill_in "Nombre", with: @recursamiento_otra_unidad_registro.nombre
    fill_in "Nombre unidad academica", with: @recursamiento_otra_unidad_registro.nombre_unidad_academica
    click_on "Update Recursamiento otra unidad registro"

    assert_text "Recursamiento otra unidad registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Recursamiento otra unidad registro" do
    visit recursamiento_otra_unidad_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recursamiento otra unidad registro was successfully destroyed"
  end
end
