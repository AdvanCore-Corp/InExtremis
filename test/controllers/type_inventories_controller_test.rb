require "test_helper"

class TypeInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_inventory = type_inventories(:one)
  end

  test "should get index" do
    get type_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_type_inventory_url
    assert_response :success
  end

  test "should create type_inventory" do
    assert_difference("TypeInventory.count") do
      post type_inventories_url, params: { type_inventory: { description: @type_inventory.description, gym_id: @type_inventory.gym_id, name: @type_inventory.name } }
    end

    assert_redirected_to type_inventory_url(TypeInventory.last)
  end

  test "should show type_inventory" do
    get type_inventory_url(@type_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_inventory_url(@type_inventory)
    assert_response :success
  end

  test "should update type_inventory" do
    patch type_inventory_url(@type_inventory), params: { type_inventory: { description: @type_inventory.description, gym_id: @type_inventory.gym_id, name: @type_inventory.name } }
    assert_redirected_to type_inventory_url(@type_inventory)
  end

  test "should destroy type_inventory" do
    assert_difference("TypeInventory.count", -1) do
      delete type_inventory_url(@type_inventory)
    end

    assert_redirected_to type_inventories_url
  end
end
