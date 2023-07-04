require "test_helper"

class BanheirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banheiro = banheiros(:one)
  end

  test "should get index" do
    get banheiros_url
    assert_response :success
  end

  test "should get new" do
    get new_banheiro_url
    assert_response :success
  end

  test "should create banheiro" do
    assert_difference("Banheiro.count") do
      post banheiros_url, params: { banheiro: { comprado: @banheiro.comprado, item: @banheiro.item } }
    end

    assert_redirected_to banheiro_url(Banheiro.last)
  end

  test "should show banheiro" do
    get banheiro_url(@banheiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_banheiro_url(@banheiro)
    assert_response :success
  end

  test "should update banheiro" do
    patch banheiro_url(@banheiro), params: { banheiro: { comprado: @banheiro.comprado, item: @banheiro.item } }
    assert_redirected_to banheiro_url(@banheiro)
  end

  test "should destroy banheiro" do
    assert_difference("Banheiro.count", -1) do
      delete banheiro_url(@banheiro)
    end

    assert_redirected_to banheiros_url
  end
end
