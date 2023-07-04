require "application_system_test_case"

class LavanderiaTest < ApplicationSystemTestCase
  setup do
    @lavanderium = lavanderia(:one)
  end

  test "visiting the index" do
    visit lavanderia_url
    assert_selector "h1", text: "Lavanderia"
  end

  test "should create lavanderium" do
    visit lavanderia_url
    click_on "New lavanderium"

    check "Comprado" if @lavanderium.comprado
    fill_in "Item", with: @lavanderium.item
    click_on "Create Lavanderium"

    assert_text "Lavanderium was successfully created"
    click_on "Back"
  end

  test "should update Lavanderium" do
    visit lavanderium_url(@lavanderium)
    click_on "Edit this lavanderium", match: :first

    check "Comprado" if @lavanderium.comprado
    fill_in "Item", with: @lavanderium.item
    click_on "Update Lavanderium"

    assert_text "Lavanderium was successfully updated"
    click_on "Back"
  end

  test "should destroy Lavanderium" do
    visit lavanderium_url(@lavanderium)
    click_on "Destroy this lavanderium", match: :first

    assert_text "Lavanderium was successfully destroyed"
  end
end
