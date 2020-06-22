require "application_system_test_case"

class BajaTemporalRegistrosTest < ApplicationSystemTestCase
  setup do
    @baja_temporal_registro = baja_temporal_registros(:one)
  end

  test "visiting the index" do
    visit baja_temporal_registros_url
    assert_selector "h1", text: "Baja Temporal Registros"
  end

  test "creating a Baja temporal registro" do
    visit baja_temporal_registros_url
    click_on "New Baja Temporal Registro"

    fill_in "Caso", with: @baja_temporal_registro.caso_id
    fill_in "Motivacion", with: @baja_temporal_registro.motivacion
    click_on "Create Baja temporal registro"

    assert_text "Baja temporal registro was successfully created"
    click_on "Back"
  end

  test "updating a Baja temporal registro" do
    visit baja_temporal_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @baja_temporal_registro.caso_id
    fill_in "Motivacion", with: @baja_temporal_registro.motivacion
    click_on "Update Baja temporal registro"

    assert_text "Baja temporal registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Baja temporal registro" do
    visit baja_temporal_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baja temporal registro was successfully destroyed"
  end
end
