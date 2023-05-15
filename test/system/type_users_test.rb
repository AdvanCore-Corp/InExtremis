require "application_system_test_case"

class TypeUsersTest < ApplicationSystemTestCase
  setup do
    @type_user = type_users(:one)
  end

  test "visiting the index" do
    visit type_users_url
    assert_selector "h1", text: "Type users"
  end

  test "should create type user" do
    visit type_users_url
    click_on "New type user"

    fill_in "Description", with: @type_user.description
    fill_in "Name", with: @type_user.name
    fill_in "Person", with: @type_user.person_id
    click_on "Create Type user"

    assert_text "Type user was successfully created"
    click_on "Back"
  end

  test "should update Type user" do
    visit type_user_url(@type_user)
    click_on "Edit this type user", match: :first

    fill_in "Description", with: @type_user.description
    fill_in "Name", with: @type_user.name
    fill_in "Person", with: @type_user.person_id
    click_on "Update Type user"

    assert_text "Type user was successfully updated"
    click_on "Back"
  end

  test "should destroy Type user" do
    visit type_user_url(@type_user)
    click_on "Destroy this type user", match: :first

    assert_text "Type user was successfully destroyed"
  end
end
