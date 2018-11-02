require "application_system_test_case"

class TipoDenunciaTest < ApplicationSystemTestCase
  setup do
    @tipo_denuncium = tipo_denuncia(:one)
  end

  test "visiting the index" do
    visit tipo_denuncia_url
    assert_selector "h1", text: "Tipo Denuncia"
  end

  test "creating a Tipo denuncium" do
    visit tipo_denuncia_url
    click_on "New Tipo Denuncium"

    fill_in "Descripcion", with: @tipo_denuncium.descripcion
    fill_in "Id", with: @tipo_denuncium.id
    fill_in "Nombre", with: @tipo_denuncium.nombre
    click_on "Create Tipo denuncium"

    assert_text "Tipo denuncium was successfully created"
    click_on "Back"
  end

  test "updating a Tipo denuncium" do
    visit tipo_denuncia_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tipo_denuncium.descripcion
    fill_in "Id", with: @tipo_denuncium.id
    fill_in "Nombre", with: @tipo_denuncium.nombre
    click_on "Update Tipo denuncium"

    assert_text "Tipo denuncium was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo denuncium" do
    visit tipo_denuncia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo denuncium was successfully destroyed"
  end
end
