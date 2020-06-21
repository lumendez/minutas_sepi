require "application_system_test_case"

class CambioComiteTutorialRegistrosTest < ApplicationSystemTestCase
  setup do
    @cambio_comite_tutorial_registro = cambio_comite_tutorial_registros(:one)
  end

  test "visiting the index" do
    visit cambio_comite_tutorial_registros_url
    assert_selector "h1", text: "Cambio Comite Tutorial Registros"
  end

  test "creating a Cambio comite tutorial registro" do
    visit cambio_comite_tutorial_registros_url
    click_on "New Cambio Comite Tutorial Registro"

    fill_in "Caso", with: @cambio_comite_tutorial_registro.caso_id
    fill_in "Cuarto tutor", with: @cambio_comite_tutorial_registro.cuarto_tutor
    fill_in "Primer tutor", with: @cambio_comite_tutorial_registro.primer_tutor
    fill_in "Quinto tutor", with: @cambio_comite_tutorial_registro.quinto_tutor
    fill_in "Segundo tutor", with: @cambio_comite_tutorial_registro.segundo_tutor
    fill_in "Tercer tutor", with: @cambio_comite_tutorial_registro.tercer_tutor
    click_on "Create Cambio comite tutorial registro"

    assert_text "Cambio comite tutorial registro was successfully created"
    click_on "Back"
  end

  test "updating a Cambio comite tutorial registro" do
    visit cambio_comite_tutorial_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @cambio_comite_tutorial_registro.caso_id
    fill_in "Cuarto tutor", with: @cambio_comite_tutorial_registro.cuarto_tutor
    fill_in "Primer tutor", with: @cambio_comite_tutorial_registro.primer_tutor
    fill_in "Quinto tutor", with: @cambio_comite_tutorial_registro.quinto_tutor
    fill_in "Segundo tutor", with: @cambio_comite_tutorial_registro.segundo_tutor
    fill_in "Tercer tutor", with: @cambio_comite_tutorial_registro.tercer_tutor
    click_on "Update Cambio comite tutorial registro"

    assert_text "Cambio comite tutorial registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cambio comite tutorial registro" do
    visit cambio_comite_tutorial_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cambio comite tutorial registro was successfully destroyed"
  end
end
