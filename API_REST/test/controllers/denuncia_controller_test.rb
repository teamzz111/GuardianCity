require 'test_helper'

class DenunciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denuncium = denuncia(:one)
  end

  test "should get index" do
    get denuncia_url, as: :json
    assert_response :success
  end

  test "should create denuncium" do
    assert_difference('Denuncium.count') do
      post denuncia_url, params: { denuncium: { descripcion_asaltante: @denuncium.descripcion_asaltante, descripcion_asalto: @denuncium.descripcion_asalto, fecha: @denuncium.fecha, tipo_denuncia_id: @denuncium.tipo_denuncia_id, usuario_id: @denuncium.usuario_id, zona_id: @denuncium.zona_id } }, as: :json
    end

    assert_response 201
  end

  test "should show denuncium" do
    get denuncium_url(@denuncium), as: :json
    assert_response :success
  end

  test "should update denuncium" do
    patch denuncium_url(@denuncium), params: { denuncium: { descripcion_asaltante: @denuncium.descripcion_asaltante, descripcion_asalto: @denuncium.descripcion_asalto, fecha: @denuncium.fecha, tipo_denuncia_id: @denuncium.tipo_denuncia_id, usuario_id: @denuncium.usuario_id, zona_id: @denuncium.zona_id } }, as: :json
    assert_response 200
  end

  test "should destroy denuncium" do
    assert_difference('Denuncium.count', -1) do
      delete denuncium_url(@denuncium), as: :json
    end

    assert_response 204
  end
end
