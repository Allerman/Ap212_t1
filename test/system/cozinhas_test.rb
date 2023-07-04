require "application_system_test_case"

class CozinhasTest < ApplicationSystemTestCase
  setup do
    @cozinha = cozinhas(:one)
  end

  test "visiting the index" do
    visit cozinhas_url
    assert_selector "h1", text: "Cozinhas"
  end

  test "should create cozinha" do
    visit cozinhas_url
    click_on "New cozinha"

    check "Comprado" if @cozinha.comprado
    fill_in "Item", with: @cozinha.item
    click_on "Create Cozinha"

    assert_text "Cozinha was successfully created"
    click_on "Back"
  end

  test "should update Cozinha" do
    visit cozinha_url(@cozinha)
    click_on "Edit this cozinha", match: :first

    check "Comprado" if @cozinha.comprado
    fill_in "Item", with: @cozinha.item
    click_on "Update Cozinha"

    assert_text "Cozinha was successfully updated"
    click_on "Back"
  end

  test "should destroy Cozinha" do
    visit cozinha_url(@cozinha)
    click_on "Destroy this cozinha", match: :first

    assert_text "Cozinha was successfully destroyed"
  end
end
