require 'test_helper'

class TipoDenunciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_denuncium = tipo_denuncia(:one)
  end

  test "should get index" do
    get tipo_denuncia_url, as: :json
    assert_response :success
  end

  test "should create tipo_denuncium" do
    assert_difference('TipoDenuncium.count') do
      post tipo_denuncia_url, params: { tipo_denuncium: { descripcion: @tipo_denuncium.descripcion, nombre: @tipo_denuncium.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tipo_denuncium" do
    get tipo_denuncium_url(@tipo_denuncium), as: :json
    assert_response :success
  end

  test "should update tipo_denuncium" do
    patch tipo_denuncium_url(@tipo_denuncium), params: { tipo_denuncium: { descripcion: @tipo_denuncium.descripcion, nombre: @tipo_denuncium.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tipo_denuncium" do
    assert_difference('TipoDenuncium.count', -1) do
      delete tipo_denuncium_url(@tipo_denuncium), as: :json
    end

    assert_response 204
  end
end
