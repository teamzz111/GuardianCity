require 'test_helper'

class ZonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zona = zonas(:one)
  end

  test "should get index" do
    get zonas_url, as: :json
    assert_response :success
  end

  test "should create zona" do
    assert_difference('Zona.count') do
      post zonas_url, params: { zona: { direccion: @zona.direccion, localidad: @zona.localidad, nombre: @zona.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show zona" do
    get zona_url(@zona), as: :json
    assert_response :success
  end

  test "should update zona" do
    patch zona_url(@zona), params: { zona: { direccion: @zona.direccion, localidad: @zona.localidad, nombre: @zona.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy zona" do
    assert_difference('Zona.count', -1) do
      delete zona_url(@zona), as: :json
    end

    assert_response 204
  end
end
