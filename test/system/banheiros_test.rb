require "application_system_test_case"

class BanheirosTest < ApplicationSystemTestCase
  setup do
    @banheiro = banheiros(:one)
  end

  test "visiting the index" do
    visit banheiros_url
    assert_selector "h1", text: "Banheiros"
  end

  test "should create banheiro" do
    visit banheiros_url
    click_on "New banheiro"

    check "Comprado" if @banheiro.comprado
    fill_in "Item", with: @banheiro.item
    click_on "Create Banheiro"

    assert_text "Banheiro was successfully created"
    click_on "Back"
  end

  test "should update Banheiro" do
    visit banheiro_url(@banheiro)
    click_on "Edit this banheiro", match: :first

    check "Comprado" if @banheiro.comprado
    fill_in "Item", with: @banheiro.item
    click_on "Update Banheiro"

    assert_text "Banheiro was successfully updated"
    click_on "Back"
  end

  test "should destroy Banheiro" do
    visit banheiro_url(@banheiro)
    click_on "Destroy this banheiro", match: :first

    assert_text "Banheiro was successfully destroyed"
  end
end
