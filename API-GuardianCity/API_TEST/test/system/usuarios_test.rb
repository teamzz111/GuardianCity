require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Apellido", with: @usuario.apellido
    fill_in "Cargo", with: @usuario.cargo
    fill_in "Cedula", with: @usuario.cedula
    fill_in "Correo", with: @usuario.correo
    fill_in "Fecha Nacimiento", with: @usuario.fecha_nacimiento
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Telefono", with: @usuario.telefono
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @usuario.apellido
    fill_in "Cargo", with: @usuario.cargo
    fill_in "Cedula", with: @usuario.cedula
    fill_in "Correo", with: @usuario.correo
    fill_in "Fecha Nacimiento", with: @usuario.fecha_nacimiento
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Telefono", with: @usuario.telefono
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
