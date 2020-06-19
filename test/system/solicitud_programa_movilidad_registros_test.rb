require "application_system_test_case"

class SolicitudProgramaMovilidadRegistrosTest < ApplicationSystemTestCase
  setup do
    @solicitud_programa_movilidad_registro = solicitud_programa_movilidad_registros(:one)
  end

  test "visiting the index" do
    visit solicitud_programa_movilidad_registros_url
    assert_selector "h1", text: "Solicitud Programa Movilidad Registros"
  end

  test "creating a Solicitud programa movilidad registro" do
    visit solicitud_programa_movilidad_registros_url
    click_on "New Solicitud Programa Movilidad Registro"

    fill_in "Caso", with: @solicitud_programa_movilidad_registro.caso_id
    fill_in "Nombre", with: @solicitud_programa_movilidad_registro.nombre
    fill_in "Nombre institucion", with: @solicitud_programa_movilidad_registro.nombre_institucion
    click_on "Create Solicitud programa movilidad registro"

    assert_text "Solicitud programa movilidad registro was successfully created"
    click_on "Back"
  end

  test "updating a Solicitud programa movilidad registro" do
    visit solicitud_programa_movilidad_registros_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @solicitud_programa_movilidad_registro.caso_id
    fill_in "Nombre", with: @solicitud_programa_movilidad_registro.nombre
    fill_in "Nombre institucion", with: @solicitud_programa_movilidad_registro.nombre_institucion
    click_on "Update Solicitud programa movilidad registro"

    assert_text "Solicitud programa movilidad registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitud programa movilidad registro" do
    visit solicitud_programa_movilidad_registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitud programa movilidad registro was successfully destroyed"
  end
end
