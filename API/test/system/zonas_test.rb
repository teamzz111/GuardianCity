require "application_system_test_case"

class ZonasTest < ApplicationSystemTestCase
  setup do
    @zona = zonas(:one)
  end

  test "visiting the index" do
    visit zonas_url
    assert_selector "h1", text: "Zonas"
  end

  test "creating a Zona" do
    visit zonas_url
    click_on "New Zona"

    fill_in "Direccion", with: @zona.direccion
    fill_in "Id", with: @zona.id
    fill_in "Localidad", with: @zona.localidad
    fill_in "Nombre", with: @zona.nombre
    click_on "Create Zona"

    assert_text "Zona was successfully created"
    click_on "Back"
  end

  test "updating a Zona" do
    visit zonas_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @zona.direccion
    fill_in "Id", with: @zona.id
    fill_in "Localidad", with: @zona.localidad
    fill_in "Nombre", with: @zona.nombre
    click_on "Update Zona"

    assert_text "Zona was successfully updated"
    click_on "Back"
  end

  test "destroying a Zona" do
    visit zonas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zona was successfully destroyed"
  end
end
