require "application_system_test_case"

class TypeInventoriesTest < ApplicationSystemTestCase
  setup do
    @type_inventory = type_inventories(:one)
  end

  test "visiting the index" do
    visit type_inventories_url
    assert_selector "h1", text: "Type inventories"
  end

  test "should create type inventory" do
    visit type_inventories_url
    click_on "New type inventory"

    fill_in "Description", with: @type_inventory.description
    fill_in "Gym", with: @type_inventory.gym_id
    fill_in "Name", with: @type_inventory.name
    click_on "Create Type inventory"

    assert_text "Type inventory was successfully created"
    click_on "Back"
  end

  test "should update Type inventory" do
    visit type_inventory_url(@type_inventory)
    click_on "Edit this type inventory", match: :first

    fill_in "Description", with: @type_inventory.description
    fill_in "Gym", with: @type_inventory.gym_id
    fill_in "Name", with: @type_inventory.name
    click_on "Update Type inventory"

    assert_text "Type inventory was successfully updated"
    click_on "Back"
  end

  test "should destroy Type inventory" do
    visit type_inventory_url(@type_inventory)
    click_on "Destroy this type inventory", match: :first

    assert_text "Type inventory was successfully destroyed"
  end
end
