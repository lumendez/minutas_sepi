require "application_system_test_case"

class FlexibilidadAcademicaRegistrosTest < ApplicationSystemTestCase
  setup do
    @flexibilidad_academica_registro = flexibilidad_academica_registros(:one)
  end

  test "visiting the index" do
    visit flexibilidad_academica_registros_url
    assert_selector "h1", text: "Flexibilidad Academica Registros"
  end

  test "creating a Flexibilidad academica registro" do
    visit flexibilidad_academica_registros_url
    click_on "New Flexibilidad Academica Registro"

    fill_in "Caso", with: @flexibilidad_academica_registro.caso_id
    fill_in "Nombre", with: @flexibilidad_academica_registro.nombre
    click_on "Create Flexibilidad academica registro"

    assert_text "Flexibilidad academica registro was successfully created"
    click_on "Back"
  end

  test "updating a Flexibilidad academica registro" do
    visit flexibilidad_academica_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @flexibilidad_academica_registro.caso_id
    fill_in "Nombre", with: @flexibilidad_academica_registro.nombre
    click_on "Update Flexibilidad academica registro"

    assert_text "Flexibilidad academica registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Flexibilidad academica registro" do
    visit flexibilidad_academica_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flexibilidad academica registro was successfully destroyed"
  end
end
