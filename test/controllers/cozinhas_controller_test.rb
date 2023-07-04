require "test_helper"

class CozinhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cozinha = cozinhas(:one)
  end

  test "should get index" do
    get cozinhas_url
    assert_response :success
  end

  test "should get new" do
    get new_cozinha_url
    assert_response :success
  end

  test "should create cozinha" do
    assert_difference("Cozinha.count") do
      post cozinhas_url, params: { cozinha: { comprado: @cozinha.comprado, item: @cozinha.item } }
    end

    assert_redirected_to cozinha_url(Cozinha.last)
  end

  test "should show cozinha" do
    get cozinha_url(@cozinha)
    assert_response :success
  end

  test "should get edit" do
    get edit_cozinha_url(@cozinha)
    assert_response :success
  end

  test "should update cozinha" do
    patch cozinha_url(@cozinha), params: { cozinha: { comprado: @cozinha.comprado, item: @cozinha.item } }
    assert_redirected_to cozinha_url(@cozinha)
  end

  test "should destroy cozinha" do
    assert_difference("Cozinha.count", -1) do
      delete cozinha_url(@cozinha)
    end

    assert_redirected_to cozinhas_url
  end
end
