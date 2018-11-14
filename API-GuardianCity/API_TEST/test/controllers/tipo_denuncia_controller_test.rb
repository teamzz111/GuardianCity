require 'test_helper'

class TipoDenunciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_denuncium = tipo_denuncia(:one)
  end

  test "should get index" do
    get tipo_denuncia_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_denuncium_url
    assert_response :success
  end

  test "should create tipo_denuncium" do
    assert_difference('TipoDenuncium.count') do
      post tipo_denuncia_url, params: { tipo_denuncium: { descripcion: @tipo_denuncium.descripcion, id: @tipo_denuncium.id, nombre: @tipo_denuncium.nombre } }
    end

    assert_redirected_to tipo_denuncium_url(TipoDenuncium.last)
  end

  test "should show tipo_denuncium" do
    get tipo_denuncium_url(@tipo_denuncium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_denuncium_url(@tipo_denuncium)
    assert_response :success
  end

  test "should update tipo_denuncium" do
    patch tipo_denuncium_url(@tipo_denuncium), params: { tipo_denuncium: { descripcion: @tipo_denuncium.descripcion, id: @tipo_denuncium.id, nombre: @tipo_denuncium.nombre } }
    assert_redirected_to tipo_denuncium_url(@tipo_denuncium)
  end

  test "should destroy tipo_denuncium" do
    assert_difference('TipoDenuncium.count', -1) do
      delete tipo_denuncium_url(@tipo_denuncium)
    end

    assert_redirected_to tipo_denuncia_url
  end
end
