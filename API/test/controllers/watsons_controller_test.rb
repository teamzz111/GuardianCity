require 'test_helper'

class WatsonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watson = watsons(:one)
  end

  test "should get index" do
    get watsons_url
    assert_response :success
  end

  test "should get new" do
    get new_watson_url
    assert_response :success
  end

  test "should create watson" do
    assert_difference('Watson.count') do
      post watsons_url, params: { watson: {  } }
    end

    assert_redirected_to watson_url(Watson.last)
  end

  test "should show watson" do
    get watson_url(@watson)
    assert_response :success
  end

  test "should get edit" do
    get edit_watson_url(@watson)
    assert_response :success
  end

  test "should update watson" do
    patch watson_url(@watson), params: { watson: {  } }
    assert_redirected_to watson_url(@watson)
  end

  test "should destroy watson" do
    assert_difference('Watson.count', -1) do
      delete watson_url(@watson)
    end

    assert_redirected_to watsons_url
  end
end
