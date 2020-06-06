require "application_system_test_case"

class TipoCasosTest < ApplicationSystemTestCase
  setup do
    @tipo_caso = tipo_casos(:one)
  end

  test "visiting the index" do
    visit tipo_casos_url
    assert_selector "h1", text: "Tipo Casos"
  end

  test "creating a Tipo caso" do
    visit tipo_casos_url
    click_on "New Tipo Caso"

    fill_in "Nombre", with: @tipo_caso.nombre
    click_on "Create Tipo caso"

    assert_text "Tipo caso was successfully created"
    click_on "Back"
  end

  test "updating a Tipo caso" do
    visit tipo_casos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_caso.nombre
    click_on "Update Tipo caso"

    assert_text "Tipo caso was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo caso" do
    visit tipo_casos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo caso was successfully destroyed"
  end
end
