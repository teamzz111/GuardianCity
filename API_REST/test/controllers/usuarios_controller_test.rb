require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url, as: :json
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { apellido: @usuario.apellido, cargo: @usuario.cargo, correo: @usuario.correo, fecha_nacimiento: @usuario.fecha_nacimiento, nombre: @usuario.nombre, telefono: @usuario.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show usuario" do
    get usuario_url(@usuario), as: :json
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { apellido: @usuario.apellido, cargo: @usuario.cargo, correo: @usuario.correo, fecha_nacimiento: @usuario.fecha_nacimiento, nombre: @usuario.nombre, telefono: @usuario.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario), as: :json
    end

    assert_response 204
  end
end
