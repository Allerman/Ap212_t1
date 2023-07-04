require "test_helper"

class LavanderiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lavanderium = lavanderia(:one)
  end

  test "should get index" do
    get lavanderia_url
    assert_response :success
  end

  test "should get new" do
    get new_lavanderium_url
    assert_response :success
  end

  test "should create lavanderium" do
    assert_difference("Lavanderium.count") do
      post lavanderia_url, params: { lavanderium: { comprado: @lavanderium.comprado, item: @lavanderium.item } }
    end

    assert_redirected_to lavanderium_url(Lavanderium.last)
  end

  test "should show lavanderium" do
    get lavanderium_url(@lavanderium)
    assert_response :success
  end

  test "should get edit" do
    get edit_lavanderium_url(@lavanderium)
    assert_response :success
  end

  test "should update lavanderium" do
    patch lavanderium_url(@lavanderium), params: { lavanderium: { comprado: @lavanderium.comprado, item: @lavanderium.item } }
    assert_redirected_to lavanderium_url(@lavanderium)
  end

  test "should destroy lavanderium" do
    assert_difference("Lavanderium.count", -1) do
      delete lavanderium_url(@lavanderium)
    end

    assert_redirected_to lavanderia_url
  end
end
