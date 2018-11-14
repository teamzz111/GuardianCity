require 'test_helper'

class DenunciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denuncium = denuncia(:one)
  end

  test "should get index" do
    get denuncia_url
    assert_response :success
  end

  test "should get new" do
    get new_denuncium_url
    assert_response :success
  end

  test "should create denuncium" do
    assert_difference('Denuncium.count') do
      post denuncia_url, params: { denuncium: { descripcion_asaltante: @denuncium.descripcion_asaltante, descripcion_asalto: @denuncium.descripcion_asalto, fecha: @denuncium.fecha, id: @denuncium.id, tipo_denuncia: @denuncium.tipo_denuncia, usuario_cedula: @denuncium.usuario_cedula, zona: @denuncium.zona } }
    end

    assert_redirected_to denuncium_url(Denuncium.last)
  end

  test "should show denuncium" do
    get denuncium_url(@denuncium)
    assert_response :success
  end

  test "should get edit" do
    get edit_denuncium_url(@denuncium)
    assert_response :success
  end

  test "should update denuncium" do
    patch denuncium_url(@denuncium), params: { denuncium: { descripcion_asaltante: @denuncium.descripcion_asaltante, descripcion_asalto: @denuncium.descripcion_asalto, fecha: @denuncium.fecha, id: @denuncium.id, tipo_denuncia: @denuncium.tipo_denuncia, usuario_cedula: @denuncium.usuario_cedula, zona: @denuncium.zona } }
    assert_redirected_to denuncium_url(@denuncium)
  end

  test "should destroy denuncium" do
    assert_difference('Denuncium.count', -1) do
      delete denuncium_url(@denuncium)
    end

    assert_redirected_to denuncia_url
  end
end
