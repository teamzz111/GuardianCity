require 'test_helper'

class WatsonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watson = watsons(:one)
  end

  test "should get index" do
    get watsons_url, as: :json
    assert_response :success
  end

  test "should create watson" do
    assert_difference('Watson.count') do
      post watsons_url, params: { watson: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show watson" do
    get watson_url(@watson), as: :json
    assert_response :success
  end

  test "should update watson" do
    patch watson_url(@watson), params: { watson: {  } }, as: :json
    assert_response 200
  end

  test "should destroy watson" do
    assert_difference('Watson.count', -1) do
      delete watson_url(@watson), as: :json
    end

    assert_response 204
  end
end
