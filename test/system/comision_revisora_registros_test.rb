require "application_system_test_case"

class ComisionRevisoraRegistrosTest < ApplicationSystemTestCase
  setup do
    @comision_revisora_registro = comision_revisora_registros(:one)
  end

  test "visiting the index" do
    visit comision_revisora_registros_url
    assert_selector "h1", text: "Comision Revisora Registros"
  end

  test "creating a Comision revisora registro" do
    visit comision_revisora_registros_url
    click_on "New Comision Revisora Registro"

    fill_in "Caso", with: @comision_revisora_registro.caso_id
    fill_in "Presidente", with: @comision_revisora_registro.presidente
    fill_in "Primer vocal", with: @comision_revisora_registro.primer_vocal
    fill_in "Secretario", with: @comision_revisora_registro.secretario
    fill_in "Segundo vocal", with: @comision_revisora_registro.segundo_vocal
    fill_in "Suplente", with: @comision_revisora_registro.suplente
    fill_in "Tercer vocal", with: @comision_revisora_registro.tercer_vocal
    click_on "Create Comision revisora registro"

    assert_text "Comision revisora registro was successfully created"
    click_on "Back"
  end

  test "updating a Comision revisora registro" do
    visit comision_revisora_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @comision_revisora_registro.caso_id
    fill_in "Presidente", with: @comision_revisora_registro.presidente
    fill_in "Primer vocal", with: @comision_revisora_registro.primer_vocal
    fill_in "Secretario", with: @comision_revisora_registro.secretario
    fill_in "Segundo vocal", with: @comision_revisora_registro.segundo_vocal
    fill_in "Suplente", with: @comision_revisora_registro.suplente
    fill_in "Tercer vocal", with: @comision_revisora_registro.tercer_vocal
    click_on "Update Comision revisora registro"

    assert_text "Comision revisora registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Comision revisora registro" do
    visit comision_revisora_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comision revisora registro was successfully destroyed"
  end
end
