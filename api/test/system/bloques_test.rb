require "application_system_test_case"

class BloquesTest < ApplicationSystemTestCase
  setup do
    @bloque = bloques(:one)
  end

  test "visiting the index" do
    visit bloques_url
    assert_selector "h1", text: "Bloques"
  end

  test "creating a Bloque" do
    visit bloques_url
    click_on "New Bloque"

    fill_in "Bloque", with: @bloque.bloque
    fill_in "Guid", with: @bloque.guid
    fill_in "Hora", with: @bloque.hora
    fill_in "Id", with: @bloque.id
    click_on "Create Bloque"

    assert_text "Bloque was successfully created"
    click_on "Back"
  end

  test "updating a Bloque" do
    visit bloques_url
    click_on "Edit", match: :first

    fill_in "Bloque", with: @bloque.bloque
    fill_in "Guid", with: @bloque.guid
    fill_in "Hora", with: @bloque.hora
    fill_in "Id", with: @bloque.id
    click_on "Update Bloque"

    assert_text "Bloque was successfully updated"
    click_on "Back"
  end

  test "destroying a Bloque" do
    visit bloques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bloque was successfully destroyed"
  end
end
