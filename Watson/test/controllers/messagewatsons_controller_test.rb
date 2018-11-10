require 'test_helper'

class MessagewatsonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messagewatson = messagewatsons(:one)
  end

  test "should get index" do
    get messagewatsons_url
    assert_response :success
  end

  test "should get new" do
    get new_messagewatson_url
    assert_response :success
  end

  test "should create messagewatson" do
    assert_difference('Messagewatson.count') do
      post messagewatsons_url, params: { messagewatson: {  } }
    end

    assert_redirected_to messagewatson_url(Messagewatson.last)
  end

  test "should show messagewatson" do
    get messagewatson_url(@messagewatson)
    assert_response :success
  end

  test "should get edit" do
    get edit_messagewatson_url(@messagewatson)
    assert_response :success
  end

  test "should update messagewatson" do
    patch messagewatson_url(@messagewatson), params: { messagewatson: {  } }
    assert_redirected_to messagewatson_url(@messagewatson)
  end

  test "should destroy messagewatson" do
    assert_difference('Messagewatson.count', -1) do
      delete messagewatson_url(@messagewatson)
    end

    assert_redirected_to messagewatsons_url
  end
end
