require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { date_birth: @person.date_birth, date_entry: @person.date_entry, email: @person.email, gym_id: @person.gym_id, lastname_one: @person.lastname_one, lastname_two: @person.lastname_two, name: @person.name, num_document: @person.num_document, type_document: @person.type_document } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { date_birth: @person.date_birth, date_entry: @person.date_entry, email: @person.email, gym_id: @person.gym_id, lastname_one: @person.lastname_one, lastname_two: @person.lastname_two, name: @person.name, num_document: @person.num_document, type_document: @person.type_document } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
