require "application_system_test_case"

class ComiteTutorialRegistrosTest < ApplicationSystemTestCase
  setup do
    @comite_tutorial_registro = comite_tutorial_registros(:one)
  end

  test "visiting the index" do
    visit comite_tutorial_registros_url
    assert_selector "h1", text: "Comite Tutorial Registros"
  end

  test "creating a Comite tutorial registro" do
    visit comite_tutorial_registros_url
    click_on "New Comite Tutorial Registro"

    fill_in "Caso", with: @comite_tutorial_registro.caso_id
    fill_in "Cuarto tutor", with: @comite_tutorial_registro.cuarto_tutor
    fill_in "Primer tutor", with: @comite_tutorial_registro.primer_tutor
    fill_in "Quinto tutor", with: @comite_tutorial_registro.quinto_tutor
    fill_in "Segundo tutor", with: @comite_tutorial_registro.segundo_tutor
    fill_in "Tercer tutor", with: @comite_tutorial_registro.tercer_tutor
    click_on "Create Comite tutorial registro"

    assert_text "Comite tutorial registro was successfully created"
    click_on "Back"
  end

  test "updating a Comite tutorial registro" do
    visit comite_tutorial_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @comite_tutorial_registro.caso_id
    fill_in "Cuarto tutor", with: @comite_tutorial_registro.cuarto_tutor
    fill_in "Primer tutor", with: @comite_tutorial_registro.primer_tutor
    fill_in "Quinto tutor", with: @comite_tutorial_registro.quinto_tutor
    fill_in "Segundo tutor", with: @comite_tutorial_registro.segundo_tutor
    fill_in "Tercer tutor", with: @comite_tutorial_registro.tercer_tutor
    click_on "Update Comite tutorial registro"

    assert_text "Comite tutorial registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Comite tutorial registro" do
    visit comite_tutorial_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comite tutorial registro was successfully destroyed"
  end
end
