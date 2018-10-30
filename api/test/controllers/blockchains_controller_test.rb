require 'test_helper'

class BlockchainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blockchain = blockchains(:one)
  end

  test "should get index" do
    get blockchains_url
    assert_response :success
  end

  test "should get new" do
    get new_blockchain_url
    assert_response :success
  end

  test "should create blockchain" do
    assert_difference('Blockchain.count') do
      post blockchains_url, params: { blockchain: { email: @blockchain.email, name: @blockchain.name } }
    end

    assert_redirected_to blockchain_url(Blockchain.last)
  end

  test "should show blockchain" do
    get blockchain_url(@blockchain)
    assert_response :success
  end

  test "should get edit" do
    get edit_blockchain_url(@blockchain)
    assert_response :success
  end

  test "should update blockchain" do
    patch blockchain_url(@blockchain), params: { blockchain: { email: @blockchain.email, name: @blockchain.name } }
    assert_redirected_to blockchain_url(@blockchain)
  end

  test "should destroy blockchain" do
    assert_difference('Blockchain.count', -1) do
      delete blockchain_url(@blockchain)
    end

    assert_redirected_to blockchains_url
  end
end
