require "application_system_test_case"

class SolicitudAbiertaRegistrosTest < ApplicationSystemTestCase
  setup do
    @solicitud_abierta_registro = solicitud_abierta_registros(:one)
  end

  test "visiting the index" do
    visit solicitud_abierta_registros_url
    assert_selector "h1", text: "Solicitud Abierta Registros"
  end

  test "creating a Solicitud abierta registro" do
    visit solicitud_abierta_registros_url
    click_on "New Solicitud Abierta Registro"

    fill_in "Asunto", with: @solicitud_abierta_registro.asunto
    fill_in "Caso", with: @solicitud_abierta_registro.caso_id
    fill_in "Motivacion", with: @solicitud_abierta_registro.motivacion
    click_on "Create Solicitud abierta registro"

    assert_text "Solicitud abierta registro was successfully created"
    click_on "Back"
  end

  test "updating a Solicitud abierta registro" do
    visit solicitud_abierta_registros_url
    click_on "Edit", match: :first

    fill_in "Asunto", with: @solicitud_abierta_registro.asunto
    fill_in "Caso", with: @solicitud_abierta_registro.caso_id
    fill_in "Motivacion", with: @solicitud_abierta_registro.motivacion
    click_on "Update Solicitud abierta registro"

    assert_text "Solicitud abierta registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitud abierta registro" do
    visit solicitud_abierta_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitud abierta registro was successfully destroyed"
  end
end
