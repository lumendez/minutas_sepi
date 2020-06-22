require "application_system_test_case"

class RevocacionBajaRegistrosTest < ApplicationSystemTestCase
  setup do
    @revocacion_baja_registro = revocacion_baja_registros(:one)
  end

  test "visiting the index" do
    visit revocacion_baja_registros_url
    assert_selector "h1", text: "Revocacion Baja Registros"
  end

  test "creating a Revocacion baja registro" do
    visit revocacion_baja_registros_url
    click_on "New Revocacion Baja Registro"

    fill_in "Caso", with: @revocacion_baja_registro.caso_id
    fill_in "Motivacion", with: @revocacion_baja_registro.motivacion
    click_on "Create Revocacion baja registro"

    assert_text "Revocacion baja registro was successfully created"
    click_on "Back"
  end

  test "updating a Revocacion baja registro" do
    visit revocacion_baja_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @revocacion_baja_registro.caso_id
    fill_in "Motivacion", with: @revocacion_baja_registro.motivacion
    click_on "Update Revocacion baja registro"

    assert_text "Revocacion baja registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Revocacion baja registro" do
    visit revocacion_baja_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revocacion baja registro was successfully destroyed"
  end
end
