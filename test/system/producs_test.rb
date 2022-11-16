require "application_system_test_case"

class ProducsTest < ApplicationSystemTestCase
  setup do
    @produc = producs(:one)
  end

  test "visiting the index" do
    visit producs_url
    assert_selector "h1", text: "Producs"
  end

  test "should create produc" do
    visit producs_url
    click_on "New produc"

    fill_in "Name", with: @produc.name
    click_on "Create Produc"

    assert_text "Produc was successfully created"
    click_on "Back"
  end

  test "should update Produc" do
    visit produc_url(@produc)
    click_on "Edit this produc", match: :first

    fill_in "Name", with: @produc.name
    click_on "Update Produc"

    assert_text "Produc was successfully updated"
    click_on "Back"
  end

  test "should destroy Produc" do
    visit produc_url(@produc)
    click_on "Destroy this produc", match: :first

    assert_text "Produc was successfully destroyed"
  end
end
