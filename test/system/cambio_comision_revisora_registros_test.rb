require "application_system_test_case"

class CambioComisionRevisoraRegistrosTest < ApplicationSystemTestCase
  setup do
    @cambio_comision_revisora_registro = cambio_comision_revisora_registros(:one)
  end

  test "visiting the index" do
    visit cambio_comision_revisora_registros_url
    assert_selector "h1", text: "Cambio Comision Revisora Registros"
  end

  test "creating a Cambio comision revisora registro" do
    visit cambio_comision_revisora_registros_url
    click_on "New Cambio Comision Revisora Registro"

    fill_in "Caso", with: @cambio_comision_revisora_registro.caso_id
    fill_in "Presidente", with: @cambio_comision_revisora_registro.presidente
    fill_in "Primer vocal", with: @cambio_comision_revisora_registro.primer_vocal
    fill_in "Secretario", with: @cambio_comision_revisora_registro.secretario
    fill_in "Segundo vocal", with: @cambio_comision_revisora_registro.segundo_vocal
    fill_in "Suplente", with: @cambio_comision_revisora_registro.suplente
    fill_in "Tercer vocal", with: @cambio_comision_revisora_registro.tercer_vocal
    click_on "Create Cambio comision revisora registro"

    assert_text "Cambio comision revisora registro was successfully created"
    click_on "Back"
  end

  test "updating a Cambio comision revisora registro" do
    visit cambio_comision_revisora_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @cambio_comision_revisora_registro.caso_id
    fill_in "Presidente", with: @cambio_comision_revisora_registro.presidente
    fill_in "Primer vocal", with: @cambio_comision_revisora_registro.primer_vocal
    fill_in "Secretario", with: @cambio_comision_revisora_registro.secretario
    fill_in "Segundo vocal", with: @cambio_comision_revisora_registro.segundo_vocal
    fill_in "Suplente", with: @cambio_comision_revisora_registro.suplente
    fill_in "Tercer vocal", with: @cambio_comision_revisora_registro.tercer_vocal
    click_on "Update Cambio comision revisora registro"

    assert_text "Cambio comision revisora registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cambio comision revisora registro" do
    visit cambio_comision_revisora_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cambio comision revisora registro was successfully destroyed"
  end
end
